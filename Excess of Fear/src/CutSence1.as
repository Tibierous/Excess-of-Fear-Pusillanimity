package  
{
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;

	public class CutSence1 extends World
	{
		[Embed (source = 'Asserts/Textures/endingpart1.png')] private const IMAGE:Class
		private var sprite:Spritemap = new Spritemap(IMAGE, 400, 300);
		
		public function CutSence1() 
		{
			sprite.add("run", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39], 10, true);
			addGraphic(sprite);
			sprite.play("run");
			sprite.scale = 2;
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.SPACE))
			{
				FP.world = new CutSence2();
			}
		}
		
	}
	
}