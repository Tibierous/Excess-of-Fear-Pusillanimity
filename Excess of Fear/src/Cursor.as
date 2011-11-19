package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	
	public class Cursor extends Entity
	{
		
		public function Cursor() 
		{
			
		}
		
		public override function update():void
		{
			if (collide("object", Input.mouseX, Input.mouseY))
			{
				Mouse.cursor = MouseCursor.BUTTON;
			}
			else 
			{
				Mouse.cursor = MouseCursor.ARROW;
			}
		}
		
	}
	
}