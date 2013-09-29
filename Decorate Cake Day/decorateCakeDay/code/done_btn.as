package code 
{
	//@Author: Rebecca Vessal
	//Instructor: Professor Jefferson
	//IDM Section 01
	//Date: September 26, 2011
	//
	//done_btn.as
	//
	//done_btn.as brings the user to the credits scene.
	
	import flash.display.SimpleButton;
	import flash.events.*;
	import flash.display.*;
	
	
	public class done_btn extends SimpleButton 
	{
		//Default constructor for done button
		public function done_btn() 
		{
			// constructor code
			//Dispatch event for user when they click on the done button
			addEventListener(MouseEvent.CLICK, onClick);
		}
		
		//Handle the event from the user and bring them to the credits scene
		public function onClick(e:Event):void
		{
			//Go to credits scene when user clicks on the done button
			(parent as Document).gotoAndStop("credits");
		}
	}
	
}
