package openfl.display; #if (!display && !flash) #if !openfl_legacy


import openfl.display.IGraphicsData;
import openfl.Vector;


@:final class GraphicsPath implements IGraphicsData implements IGraphicsPath {
	
	
	public var commands:Vector<Int>;
	public var data:Vector<Float>;
	public var winding:GraphicsPathWinding;
	
	public var __graphicsDataType (default, null):GraphicsDataType;
	
	
	public function new (commands:Vector<Int> = null, data:Vector<Float> = null, winding:GraphicsPathWinding = null) {
		
		if (winding == null) {
			
			winding = GraphicsPathWinding.EVEN_ODD;
			
		}
		
		this.commands = commands;
		this.data = data;
		this.winding = winding;
		this.__graphicsDataType = PATH;
		
	}
	
	
	public function curveTo (controlX:Float, controlY:Float, anchorX:Float, anchorY:Float):Void {
		
		if (this.commands != null && this.data != null) {
			
			this.commands.push (GraphicsPathCommand.CURVE_TO);
			this.data.push (anchorX);
			this.data.push (anchorY);
			this.data.push (controlX);
			this.data.push (controlY);
			
		}
		
	}
	
	
	public function lineTo (x:Float, y:Float):Void {
		
		if (this.commands != null && this.data != null) {
			
			this.commands.push (GraphicsPathCommand.LINE_TO);
			this.data.push (x);
			this.data.push (y);
			
		}
		
	}
	
	
	public function moveTo (x:Float, y:Float):Void {
		
		if (this.commands != null && this.data != null) {
			
			this.commands.push (GraphicsPathCommand.MOVE_TO);
			this.data.push (x);
			this.data.push (y);
			
		}
		
	}
	
	
	public function wideLineTo (x:Float, y:Float):Void {
		
		if (this.commands != null && this.data != null) {
			
			this.commands.push (GraphicsPathCommand.LINE_TO);
			this.data.push (x);
			this.data.push (y);
			
		}
		
	}
	
	
	public function wideMoveTo (x:Float, y:Float):Void {
		
		if (this.commands != null && this.data != null) {
			
			this.commands.push (GraphicsPathCommand.MOVE_TO);
			this.data.push (x);
			this.data.push (y);
			
		}
		
	}
	
	
}


#else
typedef GraphicsPath = openfl._legacy.display.GraphicsPath;
#end
#else


import openfl.Vector;


/**
 * A collection of drawing commands and the coordinate parameters for those
 * commands.
 *
 * <p> Use a GraphicsPath object with the
 * <code>Graphics.drawGraphicsData()</code> method. Drawing a GraphicsPath
 * object is the equivalent of calling the <code>Graphics.drawPath()</code>
 * method. </p>
 *
 * <p>The GraphicsPath class also has its own set of methods
 * (<code>curveTo()</code>, <code>lineTo()</code>, <code>moveTo()</code>
 * <code>wideLineTo()</code> and <code>wideMoveTo()</code>) similar to those
 * in the Graphics class for making adjustments to the
 * <code>GraphicsPath.commands</code> and <code>GraphicsPath.data</code>
 * vector arrays.</p>
 */

#if flash
@:native("flash.display.GraphicsPath")
#end

@:final extern class GraphicsPath implements IGraphicsData implements IGraphicsPath {
	
	
	/**
	 * The Vector of drawing commands as integers representing the path. Each
	 * command can be one of the values defined by the GraphicsPathCommand class.
	 */
	public var commands:Vector<Int>;
	
	/**
	 * The Vector of Numbers containing the parameters used with the drawing
	 * commands.
	 */
	public var data:Vector<Float>;
	
	/**
	 * Specifies the winding rule using a value defined in the
	 * GraphicsPathWinding class.
	 */
	public var winding:GraphicsPathWinding; /* note: currently ignored */
	
	
	/**
	 * Creates a new GraphicsPath object.
	 * 
	 * @param winding Specifies the winding rule using a value defined in the
	 *                GraphicsPathWinding class.
	 */
	public function new (commands:Vector<Int> = null, data:Vector<Float> = null, ?winding:GraphicsPathWinding);
	
	
	#if flash
	@:noCompletion @:dox(hide) @:require(flash11) public function cubicCurveTo (controlX1:Float, controlY1:Float, controlX2:Float, controlY2:Float, anchorX:Float, anchorY:Float): Void;
	#end
	
	/**
	 * Adds a new "curveTo" command to the <code>commands</code> vector and new
	 * coordinates to the <code>data</code> vector.
	 * 
	 * @param controlX A number that specifies the horizontal position of the
	 *                 control point relative to the registration point of the
	 *                 parent display object.
	 * @param controlY A number that specifies the vertical position of the
	 *                 control point relative to the registration point of the
	 *                 parent display object.
	 * @param anchorX  A number that specifies the horizontal position of the
	 *                 next anchor point relative to the registration point of
	 *                 the parent display object.
	 * @param anchorY  A number that specifies the vertical position of the next
	 *                 anchor point relative to the registration point of the
	 *                 parent display object.
	 */
	public function curveTo (controlX:Float, controlY:Float, anchorX:Float, anchorY:Float):Void;
	
	
	/**
	 * Adds a new "lineTo" command to the <code>commands</code> vector and new
	 * coordinates to the <code>data</code> vector.
	 * 
	 * @param x The x coordinate of the destination point for the line.
	 * @param y The y coordinate of the destination point for the line.
	 */
	public function lineTo (x:Float, y:Float):Void;
	
	
	/**
	 * Adds a new "moveTo" command to the <code>commands</code> vector and new
	 * coordinates to the <code>data</code> vector.
	 * 
	 * @param x The x coordinate of the destination point.
	 * @param y The y coordinate of the destination point.
	 */
	public function moveTo (x:Float, y:Float):Void;
	
	
	/**
	 * Adds a new "wideLineTo" command to the <code>commands</code> vector and
	 * new coordinates to the <code>data</code> vector.
	 * 
	 * @param x The x-coordinate of the destination point for the line.
	 * @param y The y-coordinate of the destination point for the line.
	 */
	public function wideLineTo (x:Float, y:Float):Void;
	
	
	/**
	 * Adds a new "wideMoveTo" command to the <code>commands</code> vector and
	 * new coordinates to the <code>data</code> vector.
	 * 
	 * @param x The x-coordinate of the destination point.
	 * @param y The y-coordinate of the destination point.
	 */
	public function wideMoveTo (x:Float, y:Float):Void;
	
	
}


#end