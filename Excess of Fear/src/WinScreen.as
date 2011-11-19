package  
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class WinScreen extends World
	{
		private var text:DisplayText
	
		public function WinScreen() 
		{
			text = new DisplayText(340, 295, "You Win. Press Space");
			add(text);
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.SPACE))
			{
				FP.world = new StartScreen();
			}
		}
		
	}
	
}