package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: October 4, 2011 - October 9, 2011
	//
	//replay_btn.as
	//
	//replay_btn.as represents the replay button that brings the user
	//back to the title screen.  
	//It also removes the dynamic cake and icing movieclips.
	
	import flash.display.SimpleButton;
	import flash.events.*;
	import flash.display.*;
	
	
	public class replay_btn extends SimpleButton 
	{
		//Default constructor for replay_btn
		public function replay_btn() 
		{
			// constructor code
			//Event listener for when user clicks on replay button
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		//When the user clicks on the replay button, go back to title screen
		public function onClick(e:Event): void
		{
			//if((parent as Document).contains(icing))
			//{
				//Remove all of the icing
				//(parent as Document).delete(icing);
			//}
			//Remove all of the icing once the user clicks on the replay button
			while((parent as Document).icingArray.length > 0)
			{
				//Ensure that the document display list does not try to remove a null
				//if((parent as Document).icingArray.length> 0)
				//{
					(parent as Document).removeChild((parent as Document).icingArray.pop());
					trace((parent as Document).icingArray.length);
				//}
					
				
			}
			
			//Clear out all of the cake movieclips
			(parent as Document).removeChild((parent as Document).cakeArray.pop());
			//Go back to the title screen and play the animations
			(parent as Document).gotoAndPlay("title");
		}
	}
	
}
