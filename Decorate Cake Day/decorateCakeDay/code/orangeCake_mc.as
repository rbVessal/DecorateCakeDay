package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - 
	//
	//orangeCake_mc.as
	//
	//orangeCake_mc.as represents the orange cake movieclip
	
	import flash.display.MovieClip;
	
	
	public class orangeCake_mc extends MovieClip 
	{
		//Declare and initialize positions and dimensions constants
		//for cake movieclips
		public const CAKE_X: Number = 279.20;
		public const CAKE_Y: Number = 243.75;
		public const CAKE_WIDTH: Number = 186.95;
		public const CAKE_HEIGHT: Number = 154.55;
		
		//Default constructor for orange cake movieclip
		public function orangeCake_mc() 
		{
			// constructor code
			//Initialize the position and dimensions of orange cake movieclip
			x = CAKE_X;
			y = CAKE_Y;
			width = CAKE_WIDTH;
			height = CAKE_HEIGHT;
		}
	}
	
}
