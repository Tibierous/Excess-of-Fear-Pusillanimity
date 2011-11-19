package  
{

	import net.flashpunk.World;
	
	public class House extends World
	{
		
		public function House() 
		{
			for (var i:int = 0; i < 10; i++)
			{
				add(new Objects());
				add(new Scenery());
			}
		}
		
	}
	
}