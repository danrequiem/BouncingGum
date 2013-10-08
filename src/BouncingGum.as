package
{
	import flash.display.Sprite;
	
	import net.hires.debug.Stats;
	
	import pantallas.Juego2;
	
	import starling.core.Starling;
	
	[SWF (frameRate="60", width="600", height="800", backgroundColor="0x333333")]
	public class BouncingGum extends Sprite
	{
		private var Estadisticas:Stats;
		private var FrameW:Starling;
		
		public function BouncingGum()
		{
			Estadisticas = new Stats();
			this.addChild(Estadisticas);
			
			FrameW = new Starling(Juego, stage);
			FrameW.antiAliasing = 1;
			FrameW.start();
		}
	}
}