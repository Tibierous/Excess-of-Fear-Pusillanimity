package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;

	public class Picture extends Entity
	{
		[Embed(source = 'Asserts/Textures/curtains.png')] private const IMAGE:Class;
		
		public var sprPicture:Spritemap = new Spritemap(IMAGE, 50, 50);
		[Embed (source = 'Asserts/Textures/audio/curtain.mp3')] private const SOUND:Class;
		private var sound:Sfx = new Sfx(SOUND);
		
		public function Picture() 
		{
			sprPicture.add("Close", [0, 1], 20, false);
			sprPicture.scale = 2.2;
			graphic = sprPicture;
			x = 370;
			y = 210;
			setHitbox(10, 10, -97, -83);
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
					sound.play();
					(world as Hall).Found();
				}
			}
		}
		
	}
	
}