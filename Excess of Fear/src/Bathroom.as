package  
{
	import flash.utils.Timer;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;

	
	public class Bathroom extends World
	{
		
		[Embed(source = 'Asserts/Textures/bathroom/bathroom_bg.png')] private const BACK:Class;
		private var leftToFind:int = 2;
		private var textCount:DisplayText;
		private var timer:Number;
		private var textTimer: DisplayText;
		
		public function Bathroom() 
		{
			add(new Cursor());
			addGraphic(new Image(BACK));
			textCount = new DisplayText(660, 5, "Number Left: " + leftToFind);
			add(textCount);
			textTimer = new DisplayText(0, 5, "Time Left: " + Math.floor(timer/60) + ":" + Math.round(timer%60));
			add(textTimer);
			
			timer = 30;
			
			var d:Demon = new Demon();
			add(d);
			var t:HotTap = new HotTap(d);
			add(t);
			add(new Curtain(t));
			
			var c:Crocadile = new Crocadile();
			add(c);
			var f:Flush = new Flush(c);
			add(f);
			add(new Plunger(c,f));
			
			
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
				FP.world = new LoseScreen("Bathroom");
			}
			textTimer.setText("Time Left: " + Math.floor(timer/60) + ":" + Math.round(timer%60));
		}
		
		public function Found():void
		{
			leftToFind -= 1;
			textCount.setText("Number Left: " + leftToFind);
			if (leftToFind == 0)
			{
				FP.world = new WinScreen("none");
			}
		}
		
	}
	
}