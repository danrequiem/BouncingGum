package
{
	import flash.display.Bitmap;
	import flash.display3D.textures.Texture;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	public class Recursos
	{
		[Embed(source="../Media/Imagenes/title.png")]
		public static const Title:Class;
		
		[Embed(source="../Media/Imagenes/Estrellas.jpg")]
		public static const Fondo:Class;
		
		private static var texturas:Dictionary = new Dictionary();
		private static var texturasAtlas:TextureAtlas;
		
		[Embed(source="../Media/Imagenes/Sprite.png")]
		public static const atlasexturas:Class;
		
		[Embed(source="../Media/Imagenes/Spirte.xml", mimeType="application/octet-stream")]
		public static const atlasXml:Class;
		
		public static function ObtAtlas():TextureAtlas
		{
			if(texturasAtlas == null)
			{
				var texture:starling.textures.Texture = ObtTexture("atlasexturas");
				var xml:XML = XML(new atlasXml());
				texturasAtlas = new TextureAtlas(texture, xml);
			}
			return texturasAtlas
		}
		
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