package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Bucket extends Entity
	{
		[Embed (source = 'Asserts/Textures/bucket.png')]private const IMAGE:Class;
		
		public function Bucket() 
		{
			var image:Image = new Image(IMAGE);
			graphic = image;
			x = 190;
			y = 468;
			image.scale = 1.4;
		}
		
	}
	
}