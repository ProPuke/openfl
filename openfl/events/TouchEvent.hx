package openfl.events; #if (!display && !flash) #if !openfl_legacy


import openfl.display.InteractiveObject;
import openfl.geom.Point;
import openfl.utils.ByteArray;


class TouchEvent extends Event {
	
	
	public static inline var TOUCH_BEGIN = "touchBegin";
	public static inline var TOUCH_END = "touchEnd";
	public static inline var TOUCH_MOVE = "touchMove";
	public static inline var TOUCH_OUT = "touchOut";
	public static inline var TOUCH_OVER = "touchOver";
	public static inline var TOUCH_ROLL_OUT = "touchRollOut";
	public static inline var TOUCH_ROLL_OVER = "touchRollOver";
	public static inline var TOUCH_TAP = "touchTap";
	
	public var altKey:Bool;
	public var commandKey:Bool;
	public var controlKey:Bool;
	public var ctrlKey:Bool;
	public var delta:Int;
	public var isPrimaryTouchPoint:Bool;
	public var localX:Float;
	public var localY:Float;
	public var pressure:Float;
	public var relatedObject:InteractiveObject;
	public var shiftKey:Bool;
	public var sizeX:Float;
	public var sizeY:Float;
	public var stageX:Float;
	public var stageY:Float;
	public var touchPointID:Int;
	
	
	public function new (type:String, bubbles:Bool = true, cancelable:Bool = false, touchPointID:Int = 0, isPrimaryTouchPoint:Bool = false, localX:Float = 0, localY:Float = 0, sizeX:Float = 0, sizeY:Float = 0, pressure:Float = 0, relatedObject:InteractiveObject = null, ctrlKey:Bool = false, altKey:Bool = false, shiftKey:Bool = false, commandKey:Bool = false, controlKey:Bool = false, timestamp:Float = 0, touchIntent:String = null, samples:ByteArray = null, isTouchPointCanceled:Bool = false) {
		
		super (type, bubbles, cancelable);
		
		this.touchPointID = touchPointID;
		this.isPrimaryTouchPoint = isPrimaryTouchPoint;
		this.localX = localX;
		this.localY = localY;
		this.sizeX = sizeX;
		this.sizeY = sizeY;
		this.pressure = pressure;
		this.relatedObject = relatedObject;
		this.ctrlKey = ctrlKey;
		this.altKey = altKey;
		this.shiftKey = shiftKey;
		this.commandKey = commandKey;
		this.controlKey = controlKey;
		
	}
	
	
	public override function clone ():Event {
		
		var event = new TouchEvent (type, bubbles, cancelable, touchPointID, isPrimaryTouchPoint, localX, localY, sizeX, sizeY, pressure, relatedObject, ctrlKey, altKey, shiftKey, commandKey, controlKey);
		event.target = target;
		event.currentTarget = currentTarget;
		event.eventPhase = eventPhase;
		return event;
		
	}
	
	
	public override function toString ():String {
		
		return __formatToString ("TouchEvent",  [ "type", "bubbles", "cancelable", "touchPointID", "isPrimaryTouchPoint", "localX", "localY", "sizeX", "sizeY", "pressure", "relatedObject", "ctrlKey", "altKey", "shiftKey", "commandKey", "controlKey" ]);
		
	}
	
	
	public function updateAfterEvent ():Void {
		
		
		
	}
	
	
	public static function __create (type:String, /*event:lime.ui.TouchEvent,*/ touch:Dynamic /*js.html.Touch*/, stageX:Float, stageY:Float, local:Point, target:InteractiveObject):TouchEvent {
		
		var evt = new TouchEvent (type, true, false, 0, true, local.x, local.y, 1, 1, 1);
		evt.stageX = stageX;
		evt.stageY = stageY;
		evt.target = target;
		
		return evt;
		
	}
	
	
}


#else
typedef TouchEvent = openfl._legacy.events.TouchEvent;
#end
#else


import openfl.display.InteractiveObject;
import openfl.utils.ByteArray;

/**
 * The TouchEvent class lets you handle events on devices that detect user
 * contact with the device(such as a finger on a touch screen). When a user
 * interacts with a device such as a mobile phone or tablet with a touch
 * screen, the user typically touches the screen with his or her fingers or a
 * pointing device. You can develop applications that respond to basic touch
 * events(such as a single finger tap) with the TouchEvent class. Create
 * event listeners using the event types defined in this class. For user
 * interaction with multiple points of contact(such as several fingers moving
 * across a touch screen at the same time) use the related GestureEvent,
 * PressAndTapGestureEvent, and TransformGestureEvent classes. And, use the
 * properties and methods of these classes to construct event handlers that
 * respond to the user touching the device.
 *
 * <p>Use the Multitouch class to determine the current environment's support
 * for touch interaction, and to manage the support of touch interaction if
 * the current environment supports it.</p>
 *
 * <p><b>Note:</b> When objects are nested on the display list, touch events
 * target the deepest possible nested object that is visible in the display
 * list. This object is called the target node. To have a target node's
 * ancestor(an object containing the target node in the display list) receive
 * notification of a touch event, use
 * <code>EventDispatcher.addEventListener()</code> on the ancestor node with
 * the type parameter set to the specific touch event you want to detect.</p>
 * 
 */

#if flash
@:native("flash.events.TouchEvent")
#end

extern class TouchEvent extends Event {
	
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_BEGIN:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_END:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_MOVE:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_OUT:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_OVER:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_ROLL_OUT:String;
	#end
	
	#if flash
	@:noCompletion @:dox(hide) public static var PROXIMITY_ROLL_OVER:String;
	#end
	
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_BEGIN</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_BEGIN:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_END</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_END:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_MOVE</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_MOVE:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_OUT</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_OUT:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_OVER</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_OVER:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_ROLL_OUT</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_ROLL_OUT:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_ROLL_OVER</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_ROLL_OVER:String;
	
	/**
	 * Defines the value of the <code>type</code> property of a
	 * <code>TOUCH_TAP</code> touch event object.
	 *
	 * <p>The dispatched TouchEvent object has the following properties:</p>
	 */
	public static var TOUCH_TAP:String;
	
	
	/**
	 * Indicates whether the Alt key is active(<code>true</code>) or inactive
	 * (<code>false</code>). Supported for Windows and Linux operating systems
	 * only.
	 */
	public var altKey:Bool;
	
	public var commandKey:Bool;
	
	public var controlKey:Bool;
	
	/**
	 * On Windows or Linux, indicates whether the Ctrl key is active
	 * (<code>true</code>) or inactive(<code>false</code>). On Macintosh,
	 * indicates whether either the Control key or the Command key is activated.
	 */
	public var ctrlKey:Bool;
	
	public var delta:Int;
	
	/**
	 * Indicates whether the first point of contact is mapped to mouse events.
	 */
	public var isPrimaryTouchPoint:Bool;
	
	#if flash
	@:noCompletion @:dox(hide) public var isRelatedObjectInaccessible:Bool;
	#end
	
	/**
	 * The horizontal coordinate at which the event occurred relative to the
	 * containing sprite.
	 */
	public var localX:Float;
	
	/**
	 * The vertical coordinate at which the event occurred relative to the
	 * containing sprite.
	 */
	public var localY:Float;
	
	/**
	 * A value between <code>0.0</code> and <code>1.0</code> indicating force of
	 * the contact with the device. If the device does not support detecting the
	 * pressure, the value is <code>1.0</code>.
	 */
	public var pressure:Float;
	
	/**
	 * A reference to a display list object that is related to the event. For
	 * example, when a <code>touchOut</code> event occurs,
	 * <code>relatedObject</code> represents the display list object to which the
	 * pointing device now points. This property applies to the
	 * <code>touchOut</code>, <code>touchOver</code>, <code>touchRollOut</code>,
	 * and <code>touchRollOver</code> events.
	 *
	 * <p>The value of this property can be <code>null</code> in two
	 * circumstances: if there is no related object, or there is a related
	 * object, but it is in a security sandbox to which you don't have access.
	 * Use the <code>isRelatedObjectInaccessible()</code> property to determine
	 * which of these reasons applies.</p>
	 */
	public var relatedObject:InteractiveObject;
	
	/**
	 * Indicates whether the Shift key is active(<code>true</code>) or inactive
	 * (<code>false</code>).
	 */
	public var shiftKey:Bool;
	
	/**
	 * Width of the contact area.
	 * Only supported on Android(C++ target), in the range of 0-1.
	 */
	public var sizeX:Float;
	
	/**
	 * Height of the contact area.
	 * Only supported on Android(C++ target), in the range of 0-1.
	 */
	public var sizeY:Float;
	
	/**
	 * The horizontal coordinate at which the event occurred in global Stage
	 * coordinates. This property is calculated when the <code>localX</code>
	 * property is set.
	 */
	public var stageX:Float;
	
	/**
	 * The vertical coordinate at which the event occurred in global Stage
	 * coordinates. This property is calculated when the <code>localY</code>
	 * property is set.
	 */
	public var stageY:Float;
	
	/**
	 * A unique identification number(as an int) assigned to the touch point.
	 */
	public var touchPointID:Int;
	
	
	/**
	 * Creates an Event object that contains information about touch events.
	 * Event objects are passed as parameters to event listeners.
	 * 
	 * @param type                The type of the event. Possible values are:
	 *                            <code>TouchEvent.TOUCH_BEGIN</code>,
	 *                            <code>TouchEvent.TOUCH_END</code>,
	 *                            <code>TouchEvent.TOUCH_MOVE</code>,
	 *                            <code>TouchEvent.TOUCH_OUT</code>,
	 *                            <code>TouchEvent.TOUCH_OVER</code>,
	 *                            <code>TouchEvent.TOUCH_ROLL_OUT</code>,
	 *                            <code>TouchEvent.TOUCH_ROLL_OVER</code>, and
	 *                            <code>TouchEvent.TOUCH_TAP</code>.
	 * @param bubbles             Determines whether the Event object
	 *                            participates in the bubbling phase of the event
	 *                            flow.
	 * @param cancelable          Determines whether the Event object can be
	 *                            canceled.
	 * @param touchPointID        A unique identification number(as an int)
	 *                            assigned to the touch point.
	 * @param isPrimaryTouchPoint Indicates whether the first point of contact is
	 *                            mapped to mouse events.
	 * @param relatedObject       The complementary InteractiveObject instance
	 *                            that is affected by the event. For example,
	 *                            when a <code>touchOut</code> event occurs,
	 *                            <code>relatedObject</code> represents the
	 *                            display list object to which the pointing
	 *                            device now points.
	 * @param ctrlKey             On Windows or Linux, indicates whether the Ctrl
	 *                            key is activated. On Mac, indicates whether
	 *                            either the Ctrl key or the Command key is
	 *                            activated.
	 * @param altKey              Indicates whether the Alt key is activated
	 *                           (Windows or Linux only).
	 * @param shiftKey            Indicates whether the Shift key is activated.
	 */
	public function new (type:String, bubbles:Bool = true, cancelable:Bool = false, touchPointID:Int = 0, isPrimaryTouchPoint:Bool = false, localX:Float = 0, localY:Float = 0, sizeX:Float = 0, sizeY:Float = 0, pressure:Float = 0, relatedObject:InteractiveObject = null, ctrlKey:Bool = false, altKey:Bool = false, shiftKey:Bool = false, commandKey:Bool = false, controlKey:Bool = false, timestamp:Float = 0, touchIntent:String = null, samples:ByteArray = null, isTouchPointCanceled:Bool = false);
	
	
	/**
	 * Instructs Flash Player or Adobe AIR to render after processing of this
	 * event completes, if the display list has been modified.
	 * 
	 */
	public function updateAfterEvent ():Void;
	
	
}


#end