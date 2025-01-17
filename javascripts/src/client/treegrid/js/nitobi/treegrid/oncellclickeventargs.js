/*
 * Nitobi Complete UI 1.0
 * Copyright(c) 2008, Nitobi
 * support@nitobi.com
 * 
 * http://www.nitobi.com/license
 */
nitobi.lang.defineNs('nitobi.treegrid');

/**
 * Constructs a OnCellClickEventArgs object.
 * @class When you subscribe to Grid events through the declaration, you
 * can optionally pass information about the event to the function
 * registered to handle it.  You do this by using the eventArgs keyword.
 * Cell click is fired when a Cell is clicked on using the mouse.
 * <p>
 * <b>Example</b>
 * </p>
 * <div class="code">
 * <pre><code class="html">
 * &lt;ntb:grid id="grid1" mode="livescrolling" oncellclickevent="clickHandler(eventArgs)"&gt;&lt;/ntb:grid&gt;
 * </code></pre>
 * </div>
 * <p>
 * The handler function might look like this:
 * </p>
 * <div class="code">
 * <pre><code class="javascript">
 * &#102;unction clickHandler(event)
 * {
 * 	var cell = event.getCell();
 * 	cell.getDomNode().style.backgroundColor = "red";
 * }
 * </code></pre>
 * </div>
 * @constructor
 * @param {nitobi.treegrid.Grid} source The object which is firing the event.
 * @param {nitobi.treegrid.Cell} cell The Cell object of the cell that was clicked.
 * @extends nitobi.treegrid.CellEventArgs
 * @private
 */
nitobi.treegrid.OnCellClickEventArgs = function(source, cell)
{
	nitobi.treegrid.OnCellClickEventArgs.baseConstructor.call(this, source, cell);
}

nitobi.lang.extend(nitobi.treegrid.OnCellClickEventArgs, nitobi.treegrid.CellEventArgs);