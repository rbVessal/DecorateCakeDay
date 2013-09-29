package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//orangeCake_btn.as
	//
	//orangeCake_btn.as enables the user to change the cake color to orange.
	
	import flash.display.SimpleButton;
	import flash.events.*;
	import flash.display.*;
	
	public class orangeCake_btn extends SimpleButton 
	{
		//Declare instance of orange cake movieclip
		public var orangeCake: orangeCake_mc;
		//Declare a variable for storing the order of the cake on the main
		//timeline
		//public var orderCakeNum: Number;
		
		//Default constructor for the orange cake button
		public function orangeCake_btn() 
		{
			// constructor code
			//Initialize the orange cake movieclip
			orangeCake = new orangeCake_mc();
			//Dispatch an event for when the user clicks on the orange cake
			//button
			addEventListener(MouseEvent.CLICK, changeCakeColorToOrange);
			
		}
		
		//Replace previous cake movieclip on stage to an orange cake movieclip
		public function changeCakeColorToOrange(e:MouseEvent): void
		{
			//Remove the previous cake from the array
			//and use that instance to remove the previous cake from
			//the stage
			trace("Number of cakes in array: " + (parent as Document).cakeArray.length);
			trace("Previous cake in array: " + (parent as Document).cakeArray[0]);
			//If there is nothing in the cake array, insert the cake on stage into the array
			if((parent as Document).cakeArray[0] == null)
			{
				(parent as Document).cakeArray.push((parent as Document).pinkCake_mc);
			}
			
			//Swap the previous cake movieclip with a orange cake movieclip on stage
			/*(parent as Document).swapChildren((parent as Document).cakeArray[0], (parent as Document).orangeCake_mc);
			//Pop the previous cake movieclip out of the array
			(parent as Document).cakeArray.pop();
			//Push the orange cake movieclip into the array
			(parent as Document).cakeArray.push((parent as Document).orangeCake_mc);*/
			//Get rid of the cakes in the array
			while((parent as Document).cakeArray.length > 0)
			{
				trace("Previous cake: " + (parent as Document).cakeArray[0]);
				
				
				//Get cake index
				//orderCakeNum = (parent as Document).getChildIndex((parent as Document).cakeArray[0]);
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
				/*for(var i: Number = 0; i<(parent as Document).cakeArray.length; i++)
				{
					trace("Cakes in array: " + (parent as Document).cakeArray[i]);
				}*/
				//(parent as Document).removeChild((parent as Document).cakeArray.pop());
			}
			//Insert the orange cake into the array and then onto the stage
			(parent as Document).cakeArray.push(orangeCake);
			(parent as Document).addChildAt(orangeCake,2);
			//trace((parent as Document).getChildIndex(orangeCake));
			//(parent as Document).setChildIndex(orangeCake, 2);*/
			//trace((parent as Document).cakeArray[0]);
		}
	}
	
}
