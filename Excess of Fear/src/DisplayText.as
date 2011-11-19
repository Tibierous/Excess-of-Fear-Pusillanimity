package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;

	public class DisplayText extends Entity
	{
		
		public function DisplayText( X:int, Y:int, text:String) 
		{
			graphic = new Text(text);
			x = X;
			y = Y;
		}
		
	}
	
}