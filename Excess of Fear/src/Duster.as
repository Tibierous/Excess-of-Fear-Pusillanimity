package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import flash.ui.Mouse;
	
	public class Duster extends Entity
	{
		[Embed (source = 'Asserts/Textures/feather duster.png')]private const IMAGE:Class;
		
		private var holded:Boolean = false;
		private var xOrigin:int;
		private var yOrigin:int;
		private var web:Cobweb;
		
		public function Duster(cobweb:Cobweb) 
		{
			var image:Image = new Image(IMAGE);
			graphic = image;
			x = 178;
			y = 468;
			xOrigin = x;
			yOrigin = y;
			setHitbox (image.width, image.height);
			type = "object";
			web = cobweb;
			image.angle = -20;
			setHitbox(15, 30, 0, 0);
		}
		
		override public function update():void
		{
			if (holded)
			{
				x = Input.mouseX;
				y = Input.mouseY;
				if (Input.mousePressed)
				{
					if (collideWith(web, x, y))
					{
						holded = false;
						x = xOrigin;
						y = yOrigin;
						FP.world.remove(web);						
						Mouse.show();
						type = "none";
						(world as Hall).Found();
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
						layer = Main.Toplayer
						Main.Toplayer -= 1
					}
				}
			}
		}
		
	}
	
}