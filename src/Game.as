package 
{
	import screens.Welcome;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author Vincent
	 */
	public class Game extends Sprite 
	{
		private var screenWelcome:Welcome;
		public function Game() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		private function onAddedToStage(event:Event):void
		{
			trace("Added");
			
			screenWelcome = new Welcome();
			this.addChild(screenWelcome);
			screenWelcome.initialize();
		}
	}

}