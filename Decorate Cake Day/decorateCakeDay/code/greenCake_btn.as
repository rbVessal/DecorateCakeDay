package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//greenCake_btn.as
	//
	//greenCake_btn.as enables the user to change the cake color to green.
	
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.display.*;
	
	
	public class greenCake_btn extends SimpleButton 
	{
		//Declare an instance of the green cake movieclip
		public var greenCake:greenCake_mc;
		//Declare a number variable to keep track of the order of the cake
		//on the main timeline
		//public var orderCakeNum:Number;
		
		//Default constructor for green cake button
		public function greenCake_btn() 
		{
			// constructor code
			//Initialize the green cake instance
			greenCake = new greenCake_mc();
			//Dispatch an event for when the user clicks on the green cake
			//button
			addEventListener(MouseEvent.CLICK, changeCakeColorToGreen);
		}
		
		//Replace the previous cake movieclip on stage with a green cake movieclip
		public function changeCakeColorToGreen(e:MouseEvent):void
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
			/*
			//Swap the previous cake movieclip with a green cake movieclip on stage
			(parent as Document).swapChildren((parent as Document).cakeArray[0], (parent as Document).greenCake_mc);
			//Pop the previous cake movieclip out of the array
			(parent as Document).cakeArray.pop();
			//Push the green cake into the cake array
			(parent as Document).cakeArray.push((parent as Document).greenCake_mc);
			trace("Current cake: " + (parent as Document).cakeArray[0]);*/
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
			//Insert the green cake into the array and then onto the stage
			(parent as Document).cakeArray.push(greenCake);
			(parent as Document).addChildAt(greenCake,2);
			trace((parent as Document).cakeArray[0]);
			
		}
	}
	
}
