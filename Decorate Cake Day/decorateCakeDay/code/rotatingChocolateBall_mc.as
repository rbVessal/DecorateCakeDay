package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//rotatingChocolateBall_mc.as
	//
	//rotatingChocolateBall_mc.as rotates and moves the chocolate ball movieclip
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	
	public class rotatingChocolateBall_mc extends MovieClip 
	{
		
		
		public function rotatingChocolateBall_mc() 
		{
			// constructor code
			// constructor code
			//Rotate the chocolate ball movieclip
			//rotation = 180;
			//Slightly move the chocolate ball movieclip up and down
			/*if(x == 30 && y == -241)
			{
				x = 31;
				y = -242;
			}
			else
			{
				x = 30;
				y = -241;
			}*/
			buttonMode = true;
			addEventListener(MouseEvent.MOUSE_OVER, rotateChocolateBall);
		}
		
		public function rotateChocolateBall(e:MouseEvent):void
		{
			//Rotate the chocolate ball movieclip
			rotation = 180;
			//Slightly change the x and y of the chocolate ball movieclip
			if(x == 40 && y == -235)
			{
				x = 30;
				y = -242;
			}
			else
			{
				x = 40;
				y = -235;
			}
			//Slightly enlarge the chocolate ball movieclip
			scaleX = 1.5;
			scaleY = 1.5;
			//Dispatch an event when the mouse moves out from the movieclip
			addEventListener(MouseEvent.MOUSE_OUT, stillChocolateBall);
			
		}
		
		//Return back to a still chocolate ball
		public function stillChocolateBall(e:MouseEvent):void
		{
			buttonMode = true;
			//Remove the event listeners
			//removeEventListener(MouseEvent.MOUSE_OVER, rotateChocolateBall);
			//removeEventListener(MouseEvent.MOUSE_OUT, stillChocolateBall);
		}
	}
	
}
