package  
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	
	public class HotTap extends Entity
	{
		private var lock:Boolean = true;
		private var d:Demon;
		
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
					(world as Bathroom).Found();
				}
			}
		}
		
	}
	
}