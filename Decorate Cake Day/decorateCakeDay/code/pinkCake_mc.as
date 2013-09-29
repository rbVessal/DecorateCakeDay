package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 25 - 
	//
	//pinkCake_mc.as
	//
	//pinkCake_mc.as represents the pink cake movieclip
	
	import flash.display.MovieClip;
	
	public class pinkCake_mc extends MovieClip 
	{
		//Declare and initialize coordinates and dimensions of 
		//cake constants
		public const CAKE_X: Number = 279.20;
		public const CAKE_Y: Number = 243.75;
		public const CAKE_WIDTH: Number = 186.95;
		public const CAKE_HEIGHT: Number = 154.55;
		
		//Default constructor for pink cake movieclip
		public function pinkCake_mc() 
		{
			// constructor code
			//Initialize the pink cake moveclip's coordinates in order
			//to easily replace a pink cake movie clip with another
			//cake color movieclip
			x = CAKE_X;
			y = CAKE_Y;
			width = CAKE_WIDTH;
			height = CAKE_HEIGHT;
		}
	}
	
}
