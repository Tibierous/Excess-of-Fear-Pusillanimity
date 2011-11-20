package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	
	public class Flush extends Entity
	{
		private var lock:Boolean = true;
		private var c:Crocadile;
		
		public function Flush(croc:Crocadile) 
		{
			setHitbox(13, 12, 10, 6);
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
			if (Input.mousePressed && !lock && Main.Carrying==false)
			{
				if (collidePoint(x,y,Input.mouseX,Input.mouseY))
				{
					c.flush();
					world.remove(this);
				}
			}
		}
		
	}
		
}
	