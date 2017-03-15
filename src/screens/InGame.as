package screens 
{
	import objects.Hero;
	import starling.display.Sprite;
	import starling.events.Event;
	
	/**
	 * ...
	 * @author Vincent
	 */
	public class InGame extends Sprite 
	{
		private var hero:Hero;
		
		public function InGame() 
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(e:Event):void 
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			drawGame();
		}
		
		private function drawGame():void 
		{
			hero = new Hero();
			hero.x = stage.stageWidth / 2;
			hero.y = stage.stageHeight / 2;
			this.addChild(hero);
		}
		
		
	}

}