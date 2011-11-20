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
			x = 528;
			y = 418;
			type = "none";
			d = demon;
		}
		
		public function Interact():void
		{
			setHitbox(20, 18, 8, 5);
			type = "object";
			lock = false;
		}
		
		public override function update():void
		{
			if (Input.mousePressed && !lock && Main.Carrying==false)
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