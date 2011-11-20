package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.Sfx;
	
	public class Flush extends Entity
	{
		private var lock:Boolean = true;
		private var c:Crocadile;
		[Embed (source = 'Asserts/Textures/audio/toilet.mp3')] private const SOUND:Class;
		private var sound:Sfx = new Sfx(SOUND);
		
		public function Flush(croc:Crocadile) 
		{
			setHitbox(8, 8, 0, 0);
			x = 560;
			y = 430;
			type = "none";
			c = croc;
		}
		
		public function Interact():void
		{
			type = "object";
			lock = false;
		}
		
		public override function update():void
		{
			if (Input.mousePressed && !lock)
			{
				if (collidePoint(x,y,Input.mouseX,Input.mouseY))
				{
					c.flush();
					sound.play();
					world.remove(this);
				}
			}
		}
		
	}
		
}
	