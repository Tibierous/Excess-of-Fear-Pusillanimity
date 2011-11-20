package  
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.Sfx;
	
	public class HotTap extends Entity
	{
		private var lock:Boolean = true;
		private var d:Demon;
		[Embed (source = 'Asserts/Textures/audio/hottap.mp3')] private const SOUND:Class;
		private var sound:Sfx = new Sfx(SOUND);
		
		public function HotTap(demon:Demon) 
		{
			setHitbox(8, 8, 0, 0);
			x = 528;
			y = 418;
			type = "none";
			d = demon;
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
					d.Interact();
					type = "none";
					lock = true;
					sound.play();
					(world as Bathroom).Found();
				}
			}
		}
		
	}
	
}