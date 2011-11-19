package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	
	public class Background extends Entity
	{
		public function Background(image:Image) 
		{
			graphic = image;
			x = 0;
			y = 0;
		}
		
		override public function update():void
		{
			
		}
		
	}
	
}