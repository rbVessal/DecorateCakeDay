package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 7, 2011 - October 9,2011
	//
	//blueCake_btn.as
	//
	//blueCake_btn.as enables the user to change the cake color to blue.
	
	import flash.display.SimpleButton;
	import flash.display.*;
	import flash.events.*;
	
	
	public class blueCake_btn extends SimpleButton 
	{
		//Declare an instance of blue cake movieclip
		public var blueCake: blueCake_mc;
		//Declare a variable for storing the order of the cake
		//public var orderCakeNum: Number;
		
		//Default constructor for blue cake button
		public function blueCake_btn() 
		{
			// constructor code
			//Initialize the blue cake movieclip
			blueCake = new blueCake_mc();
			//Dispatch an event for when the user clicks on the blue cake
			//button
			addEventListener(MouseEvent.CLICK, changeCakeColorToBlue);
		}
		
		//Change the previous cake movieclip on the stage to the blue cake movieclip
		public function changeCakeColorToBlue(e:MouseEvent):void
		{
			//Remove the previous cake from the array
			//and use that instance to remove the previous cake from
			//the stage
			//trace("Number of cakes in array: " + (parent as Document).cakeArray.length);
			//trace("Name of cake: " + (parent as Document).cakeArray[0]);
			//If there is nothing in the cake array, insert the cake on stage into the array
			if((parent as Document).cakeArray[0] == null)
			{
				(parent as Document).cakeArray.push((parent as Document).pinkCake_mc);
				trace("blah: " + (parent as Document).cakeArray[0]);
				
			}
			//trace("blah: " + (parent as Document).cakeArray.length);
			//trace("Name of cake: " + (parent as Document).cakeArray[0]);
			//Get rid of the cakes in the array
			while((parent as Document).cakeArray.length > 0)
			{
				/*trace((parent as Document).cakeArray.length);
				
				//Swap the previous cake movieclip with a blue cake movieclip on stage
				(parent as Document).swapChildren((parent as Document).cakeArray[0], (parent as Document).blueCake_mc);
				//Pop the previous cake movieclip out of the array
				(parent as Document).cakeArray.pop();
				(parent as Document).cakeArray.push((parent as Document).blueCake_mc);
				/*trace("Previous cake in array: " + (parent as Document).cakeArray[0]);
				//Get cake index
				//orderCakeNum = (parent as Document).getChildIndex((parent as Document).cakeArray[0]);
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
				for(var i: Number = 0; i< (parent as Document).cakeArray.length; i++)
				{
					trace("Cakes in array: " + (parent as Document).cakeArray[i]);
				}*/
				(parent as Document).removeChild((parent as Document).cakeArray.pop());
			}
			//Insert the blue cake into the array and then onto the stage
			(parent as Document).cakeArray.push(blueCake);
			(parent as Document).addChildAt(blueCake,2);
			//trace((parent as Document).getChildIndex(blueCake));
			//(parent as Document).setChildIndex(blueCake, 2);
			//trace("ORDER:" + orderCakeNum);*/
			trace("Current cake: " + (parent as Document).cakeArray[0]);
		}
	}
	
}
