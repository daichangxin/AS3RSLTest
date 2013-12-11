package
{
import flash.utils.getDefinitionByName;
import flash.events.Event;
import flash.display.StageScaleMode;
import flash.display.StageAlign;
import flash.display.Sprite;

public class LibTest extends Sprite
{
	private var _libURL:String = "assets/lib.swf";
	private var _bagUIURL:String = "assets/bagUI.swf";
	
	public function LibTest()
	{
		stage.align = StageAlign.TOP_LEFT;
		stage.scaleMode = StageScaleMode.NO_SCALE;
		
		initialize();
	}

	private function initialize() : void
	{
		var libLoader:SWFLoader = new SWFLoader(_libURL);
		libLoader.load(onLibLoaded);
	}
	
	private function onLibLoaded(e:Event):void
	{
		var bagLoader:SWFLoader = new SWFLoader(_bagUIURL);
		bagLoader.load(onBagLoaded);
	}
	
	private function onBagLoaded(e:Event):void
	{
		var bagClass:Class = getDefinitionByName("ui.BagUI") as Class;
		var bagUI:Sprite = new bagClass();
		addChild(bagUI);
	}
}
}
