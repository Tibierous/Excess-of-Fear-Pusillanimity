package  
{
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Input;
	
	public class Match 
	{
		[Embed (source = 'Asserts/Textures/attic/match.png')] private const IMAGE;
		private var image:Image = new Image(IMAGE);
		
		public function Match() 
		{
			graphic = image;
			setHitbox(image.width, image.height, 0, 0);
			//x = 240;
			//y = 490;
		}
		
	}
	
}