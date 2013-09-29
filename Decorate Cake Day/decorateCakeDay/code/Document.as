package code 
{
	
	import flash.display.MovieClip;
	
	
	public class Document extends MovieClip 
	{
		//Declare an array to store the icing movieclips
		var icingArray: Array;
		var cakeArray: Array;
		
		public function Document() 
		{
			// constructor code
			trace("Document created");
			//initialize the icing array
			icingArray = new Array();
			//initialize the cake array
			cakeArray = new Array();
			//Add the pink cake movieclip to the array
			//cakeArray.push(pinkCake_mc);
		}
	}
	
}
