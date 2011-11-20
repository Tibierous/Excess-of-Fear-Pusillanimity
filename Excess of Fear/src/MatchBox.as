package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class MatchBox extends Entity
	{
		[Embed (source = 'Asserts/Textures/attic/matchbox.png')] private const IMAGE;
		private var image:Image = new Image(IMAGE);
		
		public function MatchBox() 
		{
			graphic = image;
			setHitbox(image.width, image.height, 0, 0);
			x = 240;
			y = 490;
		}
		
	}
	
}