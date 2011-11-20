package
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import flash.ui.Mouse;
	
	public class LoseScreen extends World
	{
		private var r:String;
		[Embed (source = 'Asserts/Textures/losescreen.png')] private const BACK:Class;
		
		public function LoseScreen(re:String) 
		{
			r = re;
			addGraphic(new Image(BACK));
			Mouse.show();
			FP.alarm (1/60, function():void{Main.Carrying = false})
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.SPACE))
			{
				switch(r)
				{
					case "Bathroom": FP.world = new Bathroom(); break;
					case "Hall": FP.world = new Hall(); break;
				}
			}
		}
		
	}
	
}