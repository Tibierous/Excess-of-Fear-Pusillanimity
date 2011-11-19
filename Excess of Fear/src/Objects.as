package  
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	public class Objects extends Entity
	{
		[Embed(source = 'Asserts/Textures/WhiteSquare.png')] private const IMAGE:Class;
		
		public function Objects() 
		{
			var image:Image = new Image(IMAGE);
			image.scale = 0.05;
			graphic = image;
			x = Math.random() * 800;
			y = Math.random() * 600;
			width = image.scaledWidth;
			height = image.scaledHeight;
			
		}
		
		override public function update():void
		{
			if (Input.mousePressed)
			{
				if (Input.mouseX >= x && Input.mouseX <= x + width)
				{
					if (Input.mouseY >= y && Input.mouseY <= y + height)
					{
						FP.world.remove(this);
					}
				}
			}
		}
		
	}
	
}