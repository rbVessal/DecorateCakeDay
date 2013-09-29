package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - 
	//
	//blueCake_mc.as
	//
	//blueCake_mc.as represents the blue cake movieclip
	
	import flash.display.MovieClip;
	
	public class blueCake_mc extends MovieClip 
	{
		//Declare and initialize coordinates and dimensions of 
		//cake constants
		public const CAKE_X: Number = 279.20;
		public const CAKE_Y: Number = 243.75;
		public const CAKE_WIDTH: Number = 186.95;
		public const CAKE_HEIGHT: Number = 154.55;
		
		//Default constructor for blue cake movieclip
		public function blueCake_mc() 
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
