package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Demon extends Entity
	{
		[Embed (source = 'Asserts/Textures/happynow.png')] private var IMAGE:Class;
		[Embed (source = 'Asserts/Textures/bathroom/smoke.png')] private var SMOKE:Class;
		
		private var dead:Boolean = false;;
		private var frameCount:int = 0;
		
		public function Demon() 
		{
			addGraphic(new Image(IMAGE));
			var w:Image = new Image(IMAGE);
			x = 385;
			y = 220;
		}
		
		public function Interact():void
		{
			graphic = new Image(SMOKE);
			x = 450;
			dead = true;
		}
		
		public override function update():void
		{
			if (dead)
			{
				frameCount += 1;
				if (frameCount >= 180)
				{
					world.remove(this);
				}
			}
		}
		
	}
	
}