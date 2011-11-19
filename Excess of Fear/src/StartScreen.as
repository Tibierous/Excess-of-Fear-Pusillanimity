package  
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class StartScreen extends World
	{
		
		public function StartScreen() 
		{
			add(new DisplayText(350, 300, "Press Space to Start"));
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.SPACE))
			{
				FP.world = new House();
			}
		}
		
	}
	
}