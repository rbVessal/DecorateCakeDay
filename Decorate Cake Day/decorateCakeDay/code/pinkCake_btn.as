package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 4, 2011 - October 9,2011
	//
	//pinkCake_btn.as
	//
	//pinkCake_btn.as allows the user to change the cake color to pink
	
	import flash.display.SimpleButton;
	import flash.events.*;
	import flash.display.*;
		
	public class pinkCake_btn extends SimpleButton 
	{
		//Declare pink cake movieclip instance
		public var pinkCake: pinkCake_mc;
		//Declare a variable for storing the order of the cake on the main
		//timeline
		//public var orderCakeNum: Number;
		
		//Default constructor for pinkCake button
		public function pinkCake_btn() 
		{
			// constructor code
			//Initialize the pink cake movieclip
			pinkCake = new pinkCake_mc();
			//Add event listener for when the user clicks on the button
			addEventListener(MouseEvent.CLICK, changeCakeColorToPink);
		}
		
		//Change previous cake movieclip on stage to a pink cake movieclip
		public function changeCakeColorToPink(e:MouseEvent):void
		{
			//Remove the previous cake from the array
			//and use that instance to remove the previous cake from
			//the stage
			trace("Number of cakes in array: " + (parent as Document).cakeArray.length);
			//If there is nothing in the cake array, insert the cake on stage into the array
			//(parent as Document).cakeArray.push((parent as Document).pinkCake_mc);
			//if((parent as Document).cakeArray.pop() == null)
			//{
				//(parent as Document).cakeArray.push((parent as Document).pinkCake_mc);
			//}
			//Get rid of the cakes in the array
			while((parent as Document).cakeArray.length > 0)
			{
				trace((parent as Document).cakeArray.length);
				
				//Swap the previous cake movieclip with a pink cake movieclip on stage
				/*(parent as Document).swapChildren((parent as Document).cakeArray[0], (parent as Document).pinkCake_mc);
				//Pop the previous cake movieclip out of the array
				(parent as Document).cakeArray.pop();
				(parent as Document).cakeArray.push((parent as Document).pinkCake_mc);
				/*trace("Previous cake in array: " + (parent as Document).cakeArray[0]);
				//Get cake index
				//orderCakeNum = (parent as Document).getChildIndex((parent as Document).cakeArray[0]);
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
				for(var i: Number = 0; i<(parent as Document).cakeArray.length; i++)
				{
					trace("Cakes in array: " + (parent as Document).cakeArray[i]);
				}*/
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
			}
			//Insert the pink cake into the array and then onto the stage
			(parent as Document).cakeArray.push(pinkCake);
			(parent as Document).addChildAt(pinkCake,2);
			//trace((parent as Document).getChildIndex(pinkCake));
			//(parent as Document).setChildIndex(pinkCake, 2);
			//trace("Cake in array: " + (parent as Document).cakeArray[0]);*/
			//Remove the mouse event listener to prevent memory leak
			//(parent as Document).redCake_btn.removeEventListener(MouseEvent.CLICK, changeCakeColorToPink);
		}
	}
	
}
