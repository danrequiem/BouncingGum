package
{
	import Events.EventoDeNavegacion;
	
	import pantallas.BIenvenido;
	import pantallas.Juego2;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Juego extends Sprite
	{
		private var pantallaBien:BIenvenido;
		private var pantallaEnJuego:Juego2;
		public function Juego()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, AgregarAlStage);
		}
		
		private function AgregarAlStage(event:Event):void
		{
			trace("Se inicio el FrameWork Starling");
			
			this.addEventListener(Events.EventoDeNavegacion.cambiarPantalla, cambiarPantalla);
			
			pantallaEnJuego = new Juego2();
			pantallaEnJuego.Esconder();
			this.addChild(pantallaEnJuego);
			
			pantallaBien = new BIenvenido();
			this.addChild(pantallaBien);
			pantallaBien.Iniciar();
		}
		
		private function cambiarPantalla(event:EventoDeNavegacion):void
		{
			switch(event.parms.id)
			{
				case"play":
					pantallaBien.Esconder();
					pantallaEnJuego.Iniciar();
					break;
					
			
			}
			
		}
	}
	
}