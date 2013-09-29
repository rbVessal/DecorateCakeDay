package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//chocolateFountain_mc.as
	//
	//chocolateFountain_mc.as
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	
	public class chocolateFountain_mc extends MovieClip 
	{
		//var chocolateBall_mc: rotatingChocolateBall_mc;
		
		//Default constructor for the chocolate fountain movieclip
		public function chocolateFountain_mc() 
		{
			
			//Dispatch an event when the chocolate fountain enters the stage
			addEventListener(Event.ENTER_FRAME, goPlay);
			
		}
		
		//Play the chocolate fountain animation
		public function goPlay(e:Event):void
		{
			play();
		}
		
	}
	
}
