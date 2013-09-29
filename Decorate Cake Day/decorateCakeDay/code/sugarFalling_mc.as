package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//sugarFalling_mc.as
	//
	//sugarFalling_mc.as plays the animation of sugar falling once it enters the stage
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	
	public class sugarFalling_mc extends MovieClip 
	{
		
		
		public function sugarFalling_mc() 
		{
			// constructor code
			//Dispatch an event when the sugar falling movieclip enters the stage
			addEventListener(Event.ENTER_FRAME, doEnterFrame);
		}
		
		public function doEnterFrame(e:Event):void
		{
			//play the sugar falling movieclip
			play();
		}
	}
	
}
