package Asserts 
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class LoseScreen extends World
	{
		private var text:DisplayText
		
		public function LoseScreen() 
		{
			text = new DisplayText(340, 295, "You Lose. Press Space");
			add(text);
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.SPACE))
			{
				FP.world = new Hall();
			}
		}
		
	}
	
}