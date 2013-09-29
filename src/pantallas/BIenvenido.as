package pantallas
{
	import com.greensock.TweenLite;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class BIenvenido extends Sprite
	{
		private var bg:Image;
		private var play:Button;
		private var about:Button;
		private var scores:Button;
		private var gum:Image;
		
		public function BIenvenido()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, insetarEnPantalla);
		}
		
		private function insetarEnPantalla():void
		{
				Dibujar();
			
		}
		
		private function Dibujar():void
		{
			bg = new Image(Recursos.ObtTexture("Title"));
			bg.width = 600;
			bg.height = 800;
			this.addChild(bg);
			
			gum = new Image(Recursos.ObtTexture("Gum"));
			gum.width = 150;
			gum.height = 150;
			gum.x= 230;
			gum.y= 60;
			this.addChild(gum);
	
			play = new Button(Recursos.ObtTexture("PlayButton"));
			play.width = 100;
			play.height = 100;
			play.x= 100;
			play.y= 600;
			this.addChild(play);
			
			about = new Button(Recursos.ObtTexture("AboutButton"));
			about.width = 100;
			about.height = 100;
			about.x= 410;
			about.y= 600;
			this.addChild(about);

			scores = new Button(Recursos.ObtTexture("ScoresButton"));
			scores.width = 100;
			scores.height = 100;
			scores.x= 260;
			scores.y= 650;
			this.addChild(scores);
			

		}
		
		public function Iniciar():void
		{
			
			this.visible = true;
			gum.x = 230;
			gum.y = -100;
			
			play.x = -200;
			about.x= 700;
			scores.y = 800;
			
			TweenLite.to(gum, 2, {y:60});
			TweenLite.to(play, 2, {x:100});
			TweenLite.to(about, 2,{x:410});
			TweenLite.to(scores, 2,{y:650});
			
			this.addEventListener(Event.ENTER_FRAME, Flotar);
			
		}
		
		private function Flotar(event:Event):void
		{
			var currentDate:Date = new Date();
			
			gum.y = 60 + (Math.cos(currentDate.getTime() * 0.006) * 25);
			play.y = 600 + (Math.cos(currentDate.getTime() * 0.002) * 25);
			about.y = 600 + (Math.cos(currentDate.getTime() * 0.002) * 25);
			scores.y = 650 + (Math.cos(currentDate.getTime() * 0.002) * 25);
			
		}
		
	}
}