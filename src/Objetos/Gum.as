package Objetos
{
	
	
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Gum extends Sprite
	{
		private var gumArt:MovieClip;
		
		public function Gum()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, AgregarAlStage);
		}
		
		private function AgregarAlStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, AgregarAlStage);
			GumArt();
		}
		
		private function GumArt():void
		{
			gumArt = new starling.display.MovieClip(Recursos.ObtAtlas().getTextures("Gum"),12);
			gumArt.x = Math.ceil(-gumArt.width/2);
			gumArt.y = Math.ceil(-gumArt.height/2);
			gumArt.width = 100;
			gumArt.height = 100;
			starling.core.Starling.juggler.add(gumArt);
			this.addChild(gumArt);
			
		}		
		
	}
}