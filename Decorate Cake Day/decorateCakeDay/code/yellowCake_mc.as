package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - 
	//
	//yellowCake_mc.as
	//
	//yellowCake_mc.as represents the yellow cake movieclip
	
	import flash.display.MovieClip;
	
	
	public class yellowCake_mc extends MovieClip 
	{
		//Declare and initialize coordinates and dimensions of 
		//cake constants
		public const CAKE_X: Number = 279.20;
		public const CAKE_Y: Number = 243.75;
		public const CAKE_WIDTH: Number = 186.95;
		public const CAKE_HEIGHT: Number = 154.55;
		
		//Default constructor for yellow cake movieclip
		public function yellowCake_mc() 
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
