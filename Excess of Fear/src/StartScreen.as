package  
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;
	
	public class StartScreen extends World
	{
		//private var startText: DisplayText;
		[Embed (source = 'Asserts/Textures/spritshit.png')] private var IMAGE:Class;
		private var sprite:Spritemap;
		[Embed(source = 'Asserts/Sounds/music1.mp3')]private const MUSIC:Class;
		private var music:Sfx = new Sfx(MUSIC);
		
		public function StartScreen() 
		{
			sprite = new Spritemap(IMAGE, 400, 300);
			sprite.add("xx", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31], 10, true);
			addGraphic(sprite);
			sprite.scale = 2;
			sprite.play("xx");
			music.loop();
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