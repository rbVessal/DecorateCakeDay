package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//yellowCake_btn.as
	//
	//yellowCake_btn.as enables the user to change the cake color to yellow.
	
	import flash.display.SimpleButton;
	import flash.events.*;
	import flash.display.*;
	
	
	public class yellowCake_btn extends SimpleButton 
	{
		//Declare an instance of a yellow cake movieclip
		public var yellowCake: yellowCake_mc;
		//Declare a variable for storing the order of the cake on the main
		//timeline
		//public var orderCakeNum: Number;
		
		//Default constructor for yellow cake button
		public function yellowCake_btn() 
		{
			// constructor code
			//Initialize the yellow cake movieclip
			yellowCake = new yellowCake_mc();
			
			//Dispatch an event if the user clicks on the yellow cake button
			addEventListener(MouseEvent.MOUSE_DOWN, changeCakeColorToYellow);
		}
		
		//Replace the previous cake on stage with a yellow cake movieclip
		public function changeCakeColorToYellow(e:MouseEvent):void
		{
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
				trace((parent as Document).cakeArray.length);
				
				//Swap the previous cake movieclip with a yellow cake movieclip on stage
				/*(parent as Document).swapChildren((parent as Document).cakeArray[0], (parent as Document).yellowCake_mc);
				//Pop the previous cake movieclip out of the array
				(parent as Document).cakeArray.pop();
				(parent as Document).cakeArray.push((parent as Document).yellowCake_mc);
				/*trace((parent as Document).cakeArray[0]);
				//Get cake index
				//orderCakeNum = (parent as Document).getChildIndex((parent as Document).cakeArray[0]);
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
				for(var i: Number = 0; i<(parent as Document).cakeArray.length; i++)
				{
					trace("Cakes in array: " + (parent as Document).cakeArray[i]);
				}*/
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
			}
			//Insert the yellow cake into the array and then onto the stage
			(parent as Document).cakeArray.push(yellowCake);
			(parent as Document).addChildAt(yellowCake,2);
			//trace((parent as Document).getChildIndex(yellowCake));
			//(parent as Document).setChildIndex(yellowCake, 2);
			//trace((parent as Document).cakeArray[0]);*/
		}
	}
	
}
