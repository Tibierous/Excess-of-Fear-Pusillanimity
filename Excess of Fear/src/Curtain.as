package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Sfx;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	public class Curtain extends Entity
	{
		[Embed (source = 'Asserts/Textures/bathroom/shower curtain.png')] private var IMAGE: Class;
		private var image:Image;
		private var lock:Boolean = false;
		private var t:HotTap;
		[Embed (source = 'Asserts/Textures/audio/curtain.mp3')] private const SOUND:Class;
		private var sound:Sfx = new Sfx(SOUND);
		
		public function Curtain(tap:HotTap) 
		{
			image = new Image(IMAGE);
			graphic = image;
			type = "object";
			setHitbox(image.scaledWidth - 30, image.scaledHeight, 0, 0);
			x = 310;
			y = 140;
			t = tap;
		}
		
		public override function update():void
		{
			if (Input.mousePressed && !lock && Main.Carrying==false)
			{
				if (collidePoint(x,y,Input.mouseX,Input.mouseY))
				{
					image.scaleX = 0.3;
					type = "none";
					lock = true;
					FP.alarm (1 / 60, function():void { t.Interact() } );
					sound.play();
				}
			}
		}
	}
}