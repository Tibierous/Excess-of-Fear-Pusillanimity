package  
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	
	public class House extends World
	{
		[Embed(source = 'Asserts/Textures/hall.png')] private const BACK:Class; 
		public function House() 
		{
			add(new Cursor());
			for (var i:int = 0; i < 10; i++)
			{
				add(new Objects());
			}
			
			add(new DragObject());
			add(new OldLady());
			add(new Picture());
			add(new Background(new Image (BACK)));
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.ESCAPE))
			{
				FP.world = new StartScreen();
			}
		}
		
	}
	
}