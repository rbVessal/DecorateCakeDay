package code 
{
	
	import flash.display.MovieClip;
	import flash.events.*;
	
	
	public class bowlOfSugar_mc extends MovieClip 
	{
		//Create an instance of ice mold rose
		public var rose: iceMoldRose_mc;
		
		public function bowlOfSugar_mc() 
		{
			// constructor code
			buttonMode = true;
			//Dispatch an event for clicking on the bowl of sugar movieclip
			addEventListener(MouseEvent.CLICK, createIceMoldRose);
		}
		
		//Play the animation of creating the ice mold rose
		public function createIceMoldRose(e:MouseEvent):void
		{
			play();
			//Initialize the instance of ice mold rose
			rose = new iceMoldRose_mc();
			//Play the animation of creating the rose
			rose.play();
			//Place the rose at the same spot of the pot
			rose.x = this.x;
			rose.y = this.y;
		}
	}
	
}
