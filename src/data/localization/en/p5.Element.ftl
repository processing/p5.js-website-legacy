description__0 = Base class for all elements added to a sketch, including canvas, graphics buffers, and other HTML elements. It is not called directly, but <a href="#/p5.Element">p5.Element</a> objects are created by calling <a href="#/p5/createCanvas">createCanvas</a>, <a href="#/p5/createGraphics">createGraphics</a>, <a href="#/p5/createDiv">createDiv</a>, <a href="#/p5/createImg">createImg</a>, <a href="#/p5/createInput">createInput</a>, etc.
params__elt = String: DOM node that is wrapped
params__pInst = P5: (Optional) pointer to p5 instance
elt__description__0 = Underlying HTML element. All normal HTML methods can be called on this.
parent__description__0 = Attaches the element to the parent specified. A way of setting  the container for the element. Accepts either a string ID, DOM  node, or <a href="#/p5.Element">p5.Element</a>. If no arguments given, parent node is returned.  For more ways to position the canvas, see the  <a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'>  positioning the canvas</a> wiki page.
parent__params__parent = String|p5.Element|Object: the ID, DOM node, or <a href="#/p5.Element">p5.Element</a>  of desired parent element
id__description__0 = Sets the ID of the element. If no ID argument is passed in, it instead  returns the current ID of the element.  Note that only one element can have a particular id in a page.  The <a href="#/p5.Element/class">.class()</a> function can be used  to identify multiple elements with the same class name.
id__params__id = String: ID of the element
class__description__0 = Adds given class to the element. If no class argument is passed in, it  instead returns a string containing the current class(es) of the element.
class__params__class = String: class to add
mousePressed__description__0 = The .<a href="#/p5.Element/mousePressed">mousePressed()</a> function is called once after every time a mouse button is pressed over the element. Some mobile browsers may also trigger this event on a touch screen, if the user performs a quick tap. This can be used to attach element specific event listeners.
mousePressed__params__fxn = Function|Boolean: function to be fired when mouse is  pressed over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
doubleClicked__description__0 = The .<a href="#/p5.Element/doubleClicked">doubleClicked()</a> function is called once after every time a mouse button is pressed twice over the element. This can be used to attach element and action specific event listeners.
doubleClicked__returns = p5.Element:
doubleClicked__params__fxn = Function|Boolean: function to be fired when mouse is  double clicked over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
mouseWheel__description__0 = The <a href="#/p5.Element/mouseWheel">mouseWheel()</a> function is called once after every time a mouse wheel is scrolled over the element. This can be used to attach element specific event listeners.
mouseWheel__description__1 = The function accepts a callback function as argument which will be executed when the <code>wheel</code> event is triggered on the element, the callback function is passed one argument <code>event</code>. The <code>event.deltaY</code> property returns negative values if the mouse wheel is rotated up or away from the user and positive in the other direction. The <code>event.deltaX</code> does the same as <code>event.deltaY</code> except it reads the horizontal wheel scroll of the mouse wheel.
mouseWheel__description__2 = On OS X with "natural" scrolling enabled, the <code>event.deltaY</code> values are reversed.
mouseWheel__params__fxn = Function|Boolean: function to be fired when mouse is  scrolled over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
mouseReleased__description__0 = The <a href="#/p5.Element/mouseReleased">mouseReleased()</a> function is called once after every time a mouse button is released over the element. Some mobile browsers may also trigger this event on a touch screen, if the user performs a quick tap. This can be used to attach element specific event listeners.
mouseReleased__params__fxn = Function|Boolean: function to be fired when mouse is  released over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
mouseClicked__description__0 = The .<a href="#/p5.Element/mouseClicked">mouseClicked()</a> function is called once after a mouse button is pressed and released over the element. Some mobile browsers may also trigger this event on a touch screen, if the user performs a quick tap.This can be used to attach element specific event listeners.
mouseClicked__params__fxn = Function|Boolean: function to be fired when mouse is  clicked over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
mouseMoved__description__0 = The .<a href="#/p5.Element/mouseMoved">mouseMoved()</a> function is called once every time a mouse moves over the element. This can be used to attach an element specific event listener.
mouseMoved__params__fxn = Function|Boolean: function to be fired when a mouse moves  over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
mouseOver__description__0 = The .<a href="#/p5.Element/mouseOver">mouseOver()</a> function is called once after every time a mouse moves onto the element. This can be used to attach an element specific event listener.
mouseOver__params__fxn = Function|Boolean: function to be fired when a mouse moves  onto the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
mouseOut__description__0 = The .<a href="#/p5.Element/mouseOut">mouseOut()</a> function is called once after every time a mouse moves off the element. This can be used to attach an element specific event listener.
mouseOut__params__fxn = Function|Boolean: function to be fired when a mouse  moves off of an element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
touchStarted__description__0 = The .<a href="#/p5.Element/touchStarted">touchStarted()</a> function is called once after every time a touch is registered. This can be used to attach element specific event listeners.
touchStarted__params__fxn = Function|Boolean: function to be fired when a touch  starts over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
touchMoved__description__0 = The .<a href="#/p5.Element/touchMoved">touchMoved()</a> function is called once after every time a touch move is registered. This can be used to attach element specific event listeners.
touchMoved__params__fxn = Function|Boolean: function to be fired when a touch moves over  the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
touchEnded__description__0 = The .<a href="#/p5.Element/touchEnded">touchEnded()</a> function is called once after every time a touch is registered. This can be used to attach element specific event listeners.
touchEnded__params__fxn = Function|Boolean: function to be fired when a touch ends  over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
dragOver__description__0 = The .<a href="#/p5.Element/dragOver">dragOver()</a> function is called once after every time a file is dragged over the element. This can be used to attach an element specific event listener.
dragOver__params__fxn = Function|Boolean: function to be fired when a file is  dragged over the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
dragLeave__description__0 = The .dragLeave() function is called once after every time a dragged file leaves the element area. This can be used to attach an element specific event listener.
dragLeave__params__fxn = Function|Boolean: function to be fired when a file is  dragged off the element.  if <code>false</code> is passed instead, the previously  firing function will no longer fire.
addClass__description__0 = Adds specified class to the element.
addClass__params__class = String: name of class to add
removeClass__description__0 = Removes specified class from the element.
removeClass__params__class = String: name of class to remove
hasClass__description__0 = Checks if specified class already set to element
hasClass__returns = Boolean: a boolean value if element has specified class
hasClass__params__c = String: class name of class to check
toggleClass__description__0 = Toggles element class
toggleClass__params__c = String: class name to toggle
child__description__0 = Attaches the element as a child to the parent specified.  Accepts either a string ID, DOM node, or <a href="#/p5.Element">p5.Element</a>.  If no argument is specified, an array of children DOM nodes is returned.
child__returns = Node[]: an array of child nodes
child__params__child = String|p5.Element: (Optional) the ID, DOM node, or <a href="#/p5.Element">p5.Element</a>  to add to the current element
center__description__0 = Centers a p5 Element either vertically, horizontally, or both, relative to its parent or according to the body if the Element has no parent. If no argument is passed the Element is aligned both vertically and horizontally.
center__params__align = String: (Optional) passing 'vertical', 'horizontal' aligns element accordingly
html__description__0 = If an argument is given, sets the inner HTML of the element,  replacing any existing html. If true is included as a second  argument, html is appended instead of replacing existing html.  If no arguments are given, returns  the inner HTML of the element.
html__returns = String: the inner HTML of the element
html__params__html = String: (Optional) the HTML to be placed inside the element
html__params__append = Boolean: (Optional) whether to append HTML to existing
position__description__0 = Sets the position of the element. If no position type argument is given, the  position will be relative to (0, 0) of the window.  Essentially, this sets position:absolute and left and top  properties of style. If an optional third argument specifying position type is given,  the x and y coordinates will be interpreted based on the <a target="_blank"  href="https://developer.mozilla.org/en-US/docs/Web/CSS/position">positioning scheme</a>.  If no arguments given, the function returns the x and y position of the element. found documentation on how to be more specific with object type  <a href="https://stackoverflow.com/questions/14714314/how-do-i-comment-object-literals-in-yuidoc">https://stackoverflow.com/questions/14714314/how-do-i-comment-object-literals-in-yuidoc</a>
position__returns = Object: object of form {"{"} x: 0, y: 0 {"}"} containing the position of the element in an object
position__params__x = Number: (Optional) x-position relative to upper left of window (optional)
position__params__y = Number: (Optional) y-position relative to upper left of window (optional)
position__params__positionType = String: (Optional) it can be static, fixed, relative, sticky, initial or inherit (optional)
style__description__0 = Sets the given style (css) property (1st arg) of the element with the given value (2nd arg). If a single argument is given, .style() returns the value of the given property; however, if the single argument is given in css syntax ('text-align:center'), .style() sets the css appropriately.
style__returns = String: value of property
style__params__property = String: property to be set
style__params__value = String|p5.Color: value to assign to property
attribute__description__0 = Adds a new attribute or changes the value of an existing attribute  on the specified element. If no value is specified, returns the  value of the given attribute, or null if attribute is not set.
attribute__returns = String: value of attribute
attribute__params__attr = String: attribute to set
attribute__params__value = String: value to assign to attribute
removeAttribute__description__0 = Removes an attribute on the specified element.
removeAttribute__params__attr = String: attribute to remove
value__description__0 = Either returns the value of the element if no arguments given, or sets the value of the element.
value__returns = String|Number: value of the element
value__params__value = String|Number
show__description__0 = Shows the current element. Essentially, setting display:block for the style.
hide__description__0 = Hides the current element. Essentially, setting display:none for the style.
size__description__0 = Sets the width and height of the element. AUTO can be used to  only adjust one dimension at a time. If no arguments are given, it  returns the width and height of the element in an object. In case of  elements which need to be loaded, such as images, it is recommended  to call the function after the element has finished loading.
size__returns = Object: the width and height of the element in an object
size__params__w = Number|Constant: width of the element, either AUTO, or a number
size__params__h = Number|Constant: (Optional) height of the element, either AUTO, or a number
remove__description__0 = Removes the element, stops all media streams, and deregisters all listeners.
drop__description__0 = Registers a callback that gets called every time a file that is dropped on the element has been loaded. p5 will load every dropped file into memory and pass it as a p5.File object to the callback. Multiple files dropped at the same time will result in multiple calls to the callback.
drop__description__1 = You can optionally pass a second callback which will be registered to the raw <a href="https://developer.mozilla.org/en-US/docs/Web/Events/drop">drop</a> event. The callback will thus be provided the original <a href="https://developer.mozilla.org/en-US/docs/Web/API/DragEvent">DragEvent</a>. Dropping multiple files at the same time will trigger the second callback once per drop, whereas the first callback will trigger for each loaded file.
drop__params__callback = Function: callback to receive loaded file, called for each file dropped.
drop__params__fxn = Function: (Optional) callback triggered once when files are dropped with the drop event.
