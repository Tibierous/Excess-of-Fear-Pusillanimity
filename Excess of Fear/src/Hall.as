package  
{
	import Asserts.LoseScreen;
	import flash.utils.Timer;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	
	public class Hall extends World
	{
		[Embed(source = 'Asserts/Textures/hall.png')] private const BACK:Class;
		private var leftToFind:int = 3;
		private var textCount:DisplayText;
		private var timer:Number;
		private var textTimer: DisplayText;
		
		public function Hall() 
		{
			add(new Cursor());
			
			//add(new DragObject());
			//add(new OldLady());
			//add(new Picture());
			add(new Background(new Image(BACK)));
			add(new Flame(348, 114));
			add(new Flame(330, 116));
			add(new Flame(396, 113));
			add(new Flame(418, 115));
			add(new Picture());
			var cup:Cupbord = new Cupbord();
			add(cup);
			add(new Drawers(cup));
			var web:Cobweb = new Cobweb();
			add(web);
			add(new Duster(web));
			add(new Bucket());
			
			textCount = new DisplayText(660, 5, "Number Left: " + leftToFind);
			add(textCount);
			textTimer = new DisplayText(0, 5, "Time Left: " + Math.floor(timer/60) + ":" + Math.round(timer%60));
			add(textTimer);
			
			timer = 30;
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.ESCAPE))
			{
				FP.world = new StartScreen();
			}
			
			timer -= FP.elapsed;
			if (timer <= 0)
			{
				FP.world = new LoseScreen();
			}
			textTimer.setText("Time Left: " + Math.floor(timer/60) + ":" + Math.round(timer%60));
		}
		
		public function Found():void
		{
			leftToFind -= 1;
			textCount.setText("Number Left: " + leftToFind);
			if (leftToFind == 0)
			{
				FP.world = new WinScreen();
			}
		}
		
	}
	
}