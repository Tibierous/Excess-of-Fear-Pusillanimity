package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;

	public class Crocadile extends Entity
	{
		[Embed (source = 'Asserts/Textures/bathroom/croc.png')] private var IMAGE:Class;
		
		
		public function Crocadile() 
		{
			var image:Image = new Image(IMAGE);
			graphic = image;
			setHitbox(image.width, image.height, 0, 0);
			x = 400;
			y = 390;
		}
		
		public function Plung():void
		{
			graphic.visible = false;
		}
		
		public function flush():void 
		{
			(world as Bathroom).Found();
			world.remove(this);
		}
		
	}
	
}