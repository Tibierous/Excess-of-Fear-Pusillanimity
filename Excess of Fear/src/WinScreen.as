package  
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.graphics.Image;
	
	public class WinScreen extends World
	{
		[Embed (source = 'Asserts/Textures/winscreen.png')] private const BACK:Class;
		private var next: String;
	
		public function WinScreen(nextLevel:String) 
		{
			addGraphic(new Image(BACK));
			next = nextLevel;
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.SPACE))
			{
				switch(next)
				{
					case "Bathroom": FP.world = new Bathroom(); break;
					case "Win": FP.world = new CutSence1(); break;
					default : FP.world = new StartScreen(); break;
				}
			}
		}
		
	}
	
}