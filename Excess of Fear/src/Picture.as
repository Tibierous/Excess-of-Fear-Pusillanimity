package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;

	public class Picture extends Objects
	{
		[Embed(source = 'Asserts/Textures/frame.png')] private const IMAGE:Class;
		
		public var sprPicture:Spritemap = new Spritemap(IMAGE, 326, 296);
		
		public function Picture() 
		{
			sprPicture.add("Close", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 20, false);
			graphic = sprPicture;
			x = 250;
			y = 300;
			setHitbox(width, height, 0, 0);
		}
		
		public override function update():void
		{
			if (Input.mousePressed)
			{
				if (collidePoint(x,y,Input.mouseX,Input.mouseY))
				{
					sprPicture.play("Close");
				}
			}
		}
		
	}
	
}