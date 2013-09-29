package
{
	import flash.display.Bitmap;
	import flash.display3D.textures.Texture;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;

	public class Recursos
	{
		[Embed(source="../Media/Imagenes/Gum.png")]
		public static const Gum:Class;
		
		[Embed(source="../Media/Imagenes/title.png")]
		public static const Title:Class;
		
		[Embed(source="../Media/Imagenes/About Button.png")]
		public static const AboutButton:Class;
		
		[Embed(source="../Media/Imagenes/Play button.png")]
		public static const PlayButton:Class;

		[Embed(source="../Media/Imagenes/Scores Button.png")]
		public static const ScoresButton:Class;
		
		private static var texturas:Dictionary = new Dictionary();
		
		public static function ObtTexture(name:String):starling.textures.Texture
		{
			if(texturas[name] == undefined)
			{
				var bitmap:Bitmap = new Recursos[name]();
				texturas[name] = starling.textures.Texture.fromBitmap(bitmap);
			}
			return texturas[name];
			
		}
	}
}