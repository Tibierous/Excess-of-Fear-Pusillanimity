package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine 
	{
		
		public function Main():void 
		{
			super (800, 600, 60, false);
			//FP.console.enable();
			FP.world = new StartScreen();
		}
	}
	
}