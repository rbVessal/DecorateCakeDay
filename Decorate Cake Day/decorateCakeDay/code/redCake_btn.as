package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 4, 2011 - - October 9,2011
	//
	//redCake_btn.as
	//
	//redCake_btn.as represents the red cake button.
	
	import flash.display.SimpleButton;
	import flash.events.*;
	import flash.display.*;
	
	
	public class redCake_btn extends SimpleButton 
	{
		//Declare instance of red cake movieclip
		public var redCake: redCake_mc;
		//Declare a variable for storing the order of the cake on the main
		//timeline
		//public var orderCakeNum: Number;
		
		//Default constructor for red cake button
		public function redCake_btn() 
		{
			// constructor code
			//Initialize the redCake movieclip
			redCake = new redCake_mc();
			//When the user clicks on the red cake button, call the method
			//associated with changing the cake color
			(parent as Document).redCake_btn.addEventListener(MouseEvent.MOUSE_UP, changeCakeColorToRed);
			
		}
		
		//Switches the cake movieclip on stage with a red cake movieclip
		public function changeCakeColorToRed(e:MouseEvent): void
		{
			//trace("Number of cakes in cake array" + (parent as Document).cake.length);
			//trace((parent as Document).cake[1]);
			//Remove the cake moveclip on stage
			//(parent as Document).removeChild((parent as Document).pinkCake_mc);
			//Add the red cake movieclip onto the stage
			//(parent as Document).addChild(rCake);
			
			//Remove the previous cake from the array
			//and use that instance to remove the previous cake from
			//the stage
			trace("Number of cakes in array: " + (parent as Document).cakeArray.length);
			//If there is nothing in the cake array, insert the cake on stage into the array
			if((parent as Document).cakeArray[0] == null)
			{
				(parent as Document).cakeArray.push((parent as Document).pinkCake_mc);
			}
			//Get rid of the cakes in the array
			while((parent as Document).cakeArray.length > 0)
			{
				/*trace((parent as Document).cakeArray.length);
				
				//Swap the previous cake movieclip with a red cake movieclip on stage
				(parent as Document).swapChildren((parent as Document).cakeArray[0], (parent as Document).redCake_mc);
				//Pop the previous cake movieclip out of the array
				(parent as Document).cakeArray.pop();
				(parent as Document).cakeArray.push((parent as Document).redCake_mc);
				//orderCakeNum = (parent as Document).getChildIndex((parent as Document).cakeArray[0]);
				/*(parent as Document).removeChild((parent as Document).cakeArray.pop());
				for(var i: Number = 0; i<(parent as Document).cakeArray.length; i++)
				{
					trace("Cakes in array: " + (parent as Document).cakeArray[i]);
				}*/
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
			}
			//Insert the red cake into the array and then onto the stage
			(parent as Document).cakeArray.push(redCake);
			(parent as Document).addChildAt(redCake,2);
			//trace("ORDER:" + orderCakeNum);
			//(parent as Document).setChildIndex(redCake, 2);
			//trace((parent as Document).getChildIndex(redCake));
			//trace((parent as Document).cakeArray[0]);*/
			//Remove the mouse event listener to prevent memory leak
			//(parent as Document).redCake_btn.removeEventListener(MouseEvent.MOUSE_UP, changeCakeColorToRed);
		}
	}
	
}
