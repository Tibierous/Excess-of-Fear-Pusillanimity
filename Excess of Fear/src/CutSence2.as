package  
{
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;

	public class CutSence2 extends World
	{
		[Embed (source = 'Asserts/Textures/endingpart2.png')] private const IMAGE:Class
		private var sprite:Spritemap = new Spritemap(IMAGE, 800, 600);
		[Embed (source = 'Asserts/Textures/audio/burp.mp3')] private const SOUND:Class
		private var sound:Sfx = new Sfx(SOUND);
		private var played:Boolean = false;
		
		
		public function CutSence2() 
		{
			sprite.add("eat", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 5, false);
			addGraphic(sprite);
			sprite.play("eat");
		}
		
		override public function update():void 
		{
			super.update();
			if (sprite.complete)
			{
				if (!played) 
				{	
					sound.play();
					played = true;
				}
				if (Input.pressed(Key.SPACE))
				{
					FP.world = new StartScreen();
				}
			}
		}
		
	}
	
}