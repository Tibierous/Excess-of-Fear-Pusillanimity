package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	public class Scenery extends Entity
	{
		[Embed(source = 'Asserts/Textures/WhiteSquare.png')] private const IMAGE:Class;
		public function Scenery() 
		{
			var image:Image = new Image(IMAGE);
			image.scale = 0.05;
			graphic = image;
			x = Math.random() * 800;
			y = Math.random() * 600;
		}
		
		override public function update():void
		{
			
		}
		
	}
	
}