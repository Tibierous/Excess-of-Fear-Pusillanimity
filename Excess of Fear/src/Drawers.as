package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import flash.ui.Mouse;

	public class Drawers extends Entity
	{
		[Embed (source = 'Asserts/Textures/cupboard.png')]private const IMAGE:Class;
		
		private var holded:Boolean = false;
		private var xOrigin:int;
		private var yOrigin:int;
		private var cup:Cupbord;
		
		public function Drawers(cupboard:Cupbord) 
		{
			var image:Image = new Image(IMAGE);
			graphic = image;
			x = 250;
			y = 435;
			xOrigin = x;
			yOrigin = y;
			setHitbox (image.width, image.height);
			type = "object";
			cup = cupboard;
		}
		
		override public function update():void
		{
			if (holded)
			{
				x = Input.mouseX;
				y = Input.mouseY;
				if (Input.mousePressed)
				{
					if (collideWith(cup, x, y))
					{
						holded = false;
						x = 333;
						y = 435;
						cup.setLock();
						Mouse.show();
						type = "none";
						(world as Hall).Found();
					}
					else
					{
						holded = false;
						x = xOrigin
						y = yOrigin;
						Mouse.show();
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
					}
				}
			}
		}
		
	}
	
}