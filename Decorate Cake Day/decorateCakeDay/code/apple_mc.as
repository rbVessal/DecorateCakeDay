package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 26, 2011 - October 6, 2011
	//
	//apple_mc.as
	//
	//apple_mc.as allows the apple movieclip to be draggable
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.display.*;
	
	
	public class apple_mc extends MovieClip 
	{
		
		//Default constructor for the apple movieclip
		public function apple_mc() 
		{
			// constructor code
			//Event Listener for dragging the apple movieclip
			addEventListener(MouseEvent.MOUSE_DOWN, drag);
			//Make the movieclip like a button
			buttonMode = true;
		}
		
		//Allow the user to drag the apple movieclip
		public function drag(e:Event):void
		{
			//Allow dragging
			startDrag(true);
			//When the user releases the apple moveiclip call released method
			stage.addEventListener(MouseEvent.MOUSE_UP, released);
		}
		
		//When the user releases the apple movieclip stop dragging
		//and remove event listeners
		public function released(e:Event):void
		{
			//Stop the dragging 
			stopDrag();
			//Remove the event listeners
			removeEventListener(MouseEvent.MOUSE_DOWN, drag);
			removeEventListener(MouseEvent.MOUSE_UP, released);
			
		}
	}
	
}
