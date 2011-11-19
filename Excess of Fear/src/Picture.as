package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;

	public class Picture extends Entity
	{
		[Embed(source = 'Asserts/Textures/curtains.png')] private const IMAGE:Class;
		
		public var sprPicture:Spritemap = new Spritemap(IMAGE, 50, 50);
		
		public function Picture() 
		{
			sprPicture.add("Close", [0, 1], 20, false);
			sprPicture.scale = 2.2;
			graphic = sprPicture;
			x = 370;
			y = 210;
			setHitbox(5, 5, -100, -85);
			type = "object";
		}
		
		public override function update():void
		{
			if (Input.mousePressed)
			{
				if (collidePoint(x,y,Input.mouseX,Input.mouseY))
				{
					sprPicture.play("Close");
					type = "none";
					(world as Hall).Found();
				}
			}
		}
		
	}
	
}