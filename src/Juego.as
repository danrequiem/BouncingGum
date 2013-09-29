package
{
	import pantallas.BIenvenido;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Juego extends Sprite
	{
		private var pantallaBien:BIenvenido;
		public function Juego()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, AgregarAlStage);
		}
		
		private function AgregarAlStage(event:Event):void
		{
			trace("Se inicio el FrameWork Starling");
			
			pantallaBien = new BIenvenido();
			this.addChild(pantallaBien);
			
			pantallaBien.Iniciar();
		}
	}
}