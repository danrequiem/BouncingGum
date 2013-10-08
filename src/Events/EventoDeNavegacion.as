package Events
{
	import starling.events.Event;
	
	public class EventoDeNavegacion extends Event
	{
		public static const cambiarPantalla:String = "CambiaPantalla"
			
		public  var parms:Object;
		
		public function EventoDeNavegacion(type:String, _params:Object = null,bubbles:Boolean=false, data:Object=null)
		{
			super(type, bubbles, data);
			this.parms = _params;
		}
	}
}