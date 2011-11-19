package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	public class Flame extends Entity
	{
		[Embed (source = 'Asserts/Textures/flame.png')] private const FLAME:Class;
		
		private var sprFlame:Spritemap = new Spritemap(FLAME, 10, 20);
		
		public function Flame(X:int, Y:int) 
		{
			sprFlame.add("Fire", [0, 1, 2, 3], 10, true);
			graphic = sprFlame;
			sprFlame.play("Fire");
			x = X;
			y = Y;
		}
		
	}
	
}