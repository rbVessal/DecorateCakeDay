package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 26, 2011 
	//
	//decorateCake_btn.as
	//
	//decorateCake_btn.as enables the user to click on the button to enter the main scene.
	//Also the button rotates and resizes itself by code.
	
	import flash.display.SimpleButton;
	import flash.display.*;
	import flash.events.*;
	
	
	
	public class decorateCake_btn extends SimpleButton
	{
		
		
		public function decorateCake_btn() 
		{
			// constructor code
			//If user clicks on the Decorate Cake Button, call onClick method
			addEventListener(MouseEvent.CLICK, onClick);
			//Rotation and resizing code here
			
		}
		
		//onClick method handles clicks on the decorate cake button
		public function onClick(e:Event): void
		{
			//Transition to main scene on the main timeline
			(parent as Document).gotoAndStop("main");
			//Remove the event listener
			removeEventListener(MouseEvent.CLICK, onClick);
		}
	}
	
}
