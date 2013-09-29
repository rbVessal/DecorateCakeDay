package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 18, 2011 - 
	//
	//redCake_mc.as
	//
	//redCake_mc.as represents the red cake movieclip
	
	import flash.display.MovieClip;
	
	public class redCake_mc extends MovieClip 
	{
		//Declare instance of pink cake so we can use its constants
		//public var pCake: pinkCake_mc;
		public const CAKE_X: Number = 279.20;
		public const CAKE_Y: Number = 243.75;
		public const CAKE_WIDTH: Number = 186.95;
		public const CAKE_HEIGHT: Number = 154.55;
		//Default constructor for red cake movieclip
		public function redCake_mc() 
		{
			// constructor code
			//x = pCake.CAKE_X;
			//y = pCake.CAKE_Y;
			//Same coordinates and dimensions as previous cake movieclip on stage
			x = CAKE_X;
			y = CAKE_Y;
			width = CAKE_WIDTH;
			height = CAKE_HEIGHT;
			
		}
	}
	
}
