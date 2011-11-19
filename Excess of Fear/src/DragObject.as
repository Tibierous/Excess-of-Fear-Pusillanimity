package  
{
	import net.flashpunk.utils.Input;
	
	public class DragObject extends Objects
	{
		private var holded:Boolean = false;
		private var xOrigin:int;
		private var yOrigin:int;
		private var target:Objects;
		
		public function DragObject() 
		{
			super();
			xOrigin = x;
			yOrigin = y;
		}
		
		override public function update():void
		{
			if (holded)
			{
				x = Input.mouseX;
				y = Input.mouseY;
				if (Input.mousePressed)
				{
					if (target != null && collideWith(target, x, y))
					{
						holded = false;
					}
					else
					{
						holded = false;
						x = xOrigin
						y = yOrigin;
					}
					
				}
			}
			else
			{
				if (Input.mousePressed)
				{
					if (collidePoint(x,y,Input.mouseX,Input.mouseY))
					{
						holded = true;
					}
				}
			}
		}
		
	}
	
}