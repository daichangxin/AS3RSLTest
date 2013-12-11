package
{
import flash.display.Loader;
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.net.URLRequest;
import flash.system.ApplicationDomain;
import flash.system.LoaderContext;
/**
 * @author daichangxin
 */
public class SWFLoader extends EventDispatcher
{
	private var _url:String;
	private var _loader:Loader;
	
	public function SWFLoader(url:String)
	{
		_url = url;
	}
	
	public function load(onComplete:Function):void
	{
		_loader = new Loader();
		_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onComplete);
		_loader.load(new URLRequest(_url), new LoaderContext(false, ApplicationDomain.currentDomain));
	}
}
}
