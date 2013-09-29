package code 
{
	
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 26, 2011 - October 6, 2011
	//
	//icingPiper_mc.as
	//
	//icingPiper_mc.as allows the user to pipe out icing dynamically.
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	
	public class icingPiper_mc extends MovieClip 
	{
		//Declare instance of icing_mc
		public var icing: icing_mc;
		//Declare bool variable
		//public var drag: Boolean;
		//Default constructor for icing piper movieclip
		public function icingPiper_mc() 
		{
			// constructor code
			//Add event listener for the icing piper movieclip
			addEventListener(MouseEvent.MOUSE_DOWN, pipeIcing);
			//Make movieclip like a button
			buttonMode = true;
		}
		
		//Pipe out icing from the icing piper's tip
		public function pipeIcing(e:MouseEvent):void
		{
			//Allow dragging and change alpha
			startDrag(true);
			//drag = true;
			alpha = .75;
			//Place icing at the tip of the piper
			icing = new icing_mc();
			//Set the coordinates of the iciing to be the tip of the piper
			icing.x = (parent as Document).piper_mc.x - 55;
			icing.y = (parent as Document).piper_mc.y + 65;
			//trace(icing);
			//Add the icing to the stage
			(parent as Document).addChild(icing);
			//Add icing to the array
			(parent as Document).icingArray.push(icing);
			//Call noIcing once the user releases the piper
			addEventListener(MouseEvent.MOUSE_UP, noIcing);
			//trace(drag);
			//while(drag)
			//{
				
			//}
			
			
		}
		
		//Stop piping out icing
		public function noIcing(e:MouseEvent):void
		{
			//Stop the drag
			stopDrag();
			//Change the alpha back to normal
			alpha = 1.0;
			//drag = false;
			//Remove the event listners
			//removeEventListener(MouseEvent.MOUSE_DOWN, pipeIcing);
			//removeEventListener(MouseEvent.MOUSE_UP, noIcing);
		}
	}
	
}
