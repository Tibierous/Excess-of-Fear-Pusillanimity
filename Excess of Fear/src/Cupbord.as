package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	public class Cupbord extends Entity
	{
		[Embed(source = 'Asserts/Textures/understairdoor.png')] private const CLOSE:Class;
		
		private var closeImage:Image;
		private var openImage:Image;
		private var open:Boolean = true;
		private var sprPicture:Spritemap = new Spritemap(CLOSE, 70, 100);
		private var lock: Boolean = false;
		public function Checklock():Boolean
		{
			return lock
		}
		
		public function Cupbord() 
		{
			sprPicture.add("Open", [1, 0], 20, false);
			sprPicture.add("Close", [0, 1], 20, false);
			graphic = sprPicture;
			x = 340;
			y = 390;
			setHitbox(50, 50, -20, -45);
			type = "object";
		}
		
		public override function update():void
		{
			if (Input.mousePressed && !lock && Main.Carrying==false)
			{
				if (collidePoint(x,y,Input.mouseX,Input.mouseY))
				{
					open = false;
					sprPicture.play("Close");
					type = "none";
					lock=true
				}
			}
		}
		
		public function setLock():void
		{
			lock = true;
			sprPicture.play("Close");
			type = "none";
		}
	}
	
}