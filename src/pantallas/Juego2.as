package pantallas
{
	import Objetos.Gum;
	
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.display.Image;
	
	public class Juego2 extends Sprite
	{
		private var gum:Gum;
		private var bg:Image;

		
		public function Juego2()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, AgregarAlStage);
		}
		
		private function AgregarAlStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, AgregarAlStage);
			Dibujar();
		}		
		
		private function Dibujar():void
		{
			
			bg = new Image(Recursos.ObtTexture("Fondo"));
			bg.width = 600;
			bg.height = 800;
			this.addChild(bg);
			
			gum = new Gum();
			gum.x = 400;
			gum.y = 800;
			this.addChild(gum);
		}
		public function Esconder():void
		{
			this.visible =false;
		}
		public function Iniciar():void
		{
			this.visible = true;
		}
	
	}
}