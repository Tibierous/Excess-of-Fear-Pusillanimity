package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import flash.ui.Mouse;

	public class Plunger extends Entity
	{
		[Embed (source = 'Asserts/Textures/bathroom/plunger.png')] private var IMAGE:Class;
		private var c:Crocadile;
		private var holded:Boolean = false;
		private var xOrigin:int;
		private var yOrigin:int;
		private var f:Flush;
		
		public function Plunger(croc:Crocadile, flush:Flush) 
		{
			var image: Image = new Image(IMAGE);
			graphic = image;
			x = 550;
			y = 490;
			xOrigin = x;
			yOrigin = y;
			setHitbox(image.width, image.height, 0, 0);
			type = "object";
			c = croc;
			f = flush;
		}
		
		override public function update():void
		{
			if (holded)
			{
				x = Input.mouseX;
				y = Input.mouseY;
				if (Input.mousePressed)
				{
					if (collideWith(c, x, y))
					{
						holded = false;
						c.Plung();
						f.Interact();
						world.remove(this);
						Mouse.show();
						FP.alarm (1/60, function():void{Main.Carrying = false})
					}
					else
					{
						holded = false;
						x = xOrigin
						y = yOrigin;
						Mouse.show();
						FP.alarm (1/60, function():void{Main.Carrying = false})
					}
					
				}
			}
			else if(type == "object")
			{
				if (Input.mousePressed)
				{
					if (collidePoint(x,y,Input.mouseX,Input.mouseY))
					{
						holded = true;
						Mouse.hide();
						Main.Carrying = true;
					}
				}
			}
		}
		
	}
	
}