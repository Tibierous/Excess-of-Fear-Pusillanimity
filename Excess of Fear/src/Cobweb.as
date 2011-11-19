package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	public class Cobweb extends Entity
	{
		
		[Embed(source = 'Asserts/Textures/spider.png')] private const CLOSE:Class;
		
		public function Cobweb() 
		{
			var image:Image = new Image(CLOSE); 
			graphic = image;
			x = 240;
			y = 85;
			setHitbox(30, 30, 0, 0);
		}
		
	}
	
}