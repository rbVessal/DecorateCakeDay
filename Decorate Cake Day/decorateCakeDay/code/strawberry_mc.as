package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 26, 2011 - October 6, 2011
	//
	//strawberry_mc.as
	//
	//strawberry_mc.as allows the strawberry movieclip to be draggable
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.display.*;
	
	
	public class strawberry_mc extends MovieClip 
	{
		
		//Default constructor for strawberry movieclip
		public function strawberry_mc() 
		{
			// constructor code
			//Add event listener for when the user clicks on the strawberry
			//movieclip
			addEventListener(MouseEvent.MOUSE_DOWN, drag);
			//Make the movieclip like a button
			buttonMode = true;
		}
		
		//Allow the user to drag the stawberry movieclip
		public function drag(e:Event):void
		{
			//Allow user to drag
			startDrag(true);
			//Add event listener for when the user releases the 
			//stawberry movieclip
			addEventListener(MouseEvent.MOUSE_UP, released);
		}
		
		//Stop the dragging of the stawberry movieclip
		public function released(e:Event):void
		{
			//Stop dragging of strawberry movieclip
			stopDrag();
			//Remove event listeners
			removeEventListener(MouseEvent.MOUSE_DOWN, drag);
			removeEventListener(MouseEvent.MOUSE_UP, released);
			
		}
	}
	
}
