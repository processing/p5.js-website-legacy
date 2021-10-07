description__0 = XML is a representation of an XML object, able to parse XML code. Use <a href="#/p5/loadXML">loadXML()</a> to load external XML files and create XML objects.
getParent__description__0 = Gets a copy of the element's parent. Returns the parent as another <a href="#/p5.XML">p5.XML</a> object.
getParent__returns = p5.XML: element parent
getName__description__0 = Gets the element's full name, which is returned as a String.
getName__returns = String: the name of the node
setName__description__0 = Sets the element's name, which is specified as a String.
setName__params__the = String: new name of the node
hasChildren__description__0 = Checks whether or not the element has any children, and returns the result as a boolean.
hasChildren__returns = Boolean:
listChildren__description__0 = Get the names of all of the element's children, and returns the names as an array of Strings. This is the same as looping through and calling <a href="#/p5.XML/getName">getName()</a> on each child element individually.
listChildren__returns = String[]: names of the children of the element
getChildren__description__0 = Returns all of the element's children as an array of <a href="#/p5.XML">p5.XML</a> objects. When the name parameter is specified, then it will return all children that match that name.
getChildren__returns = p5.XML[]: children of the element
getChildren__params__name = String: (Optional) element name
getChild__description__0 = Returns the first of the element's children that matches the name parameter or the child of the given index.It returns undefined if no matching child is found.
getChild__returns = p5.XML:
getChild__params__name = String|Integer: element name or index
addChild__description__0 = Appends a new child to the element. The child can be specified with either a String, which will be used as the new tag's name, or as a reference to an existing <a href="#/p5.XML">p5.XML</a> object. A reference to the newly created child is returned as an <a href="#/p5.XML">p5.XML</a> object.
addChild__params__node = p5.XML: a <a href="#/p5.XML">p5.XML</a> Object which will be the child to be added
removeChild__description__0 = Removes the element specified by name or index.
removeChild__params__name = String|Integer: element name or index
getAttributeCount__description__0 = Counts the specified element's number of attributes, returned as an Number.
getAttributeCount__returns = Integer:
listAttributes__description__0 = Gets all of the specified element's attributes, and returns them as an array of Strings.
listAttributes__returns = String[]: an array of strings containing the names of attributes
hasAttribute__description__0 = Checks whether or not an element has the specified attribute.
hasAttribute__returns = Boolean: true if attribute found else false
hasAttribute__params__the = String: attribute to be checked
getNum__description__0 = Returns an attribute value of the element as an Number. If the defaultValue parameter is specified and the attribute doesn't exist, then defaultValue is returned. If no defaultValue is specified and the attribute doesn't exist, the value 0 is returned.
getNum__returns = Number:
getNum__params__name = String: the non-null full name of the attribute
getNum__params__defaultValue = Number: (Optional) the default value of the attribute
getString__description__0 = Returns an attribute value of the element as an String. If the defaultValue parameter is specified and the attribute doesn't exist, then defaultValue is returned. If no defaultValue is specified and the attribute doesn't exist, null is returned.
getString__returns = String:
getString__params__name = String: the non-null full name of the attribute
getString__params__defaultValue = Number: (Optional) the default value of the attribute
setAttribute__description__0 = Sets the content of an element's attribute. The first parameter specifies the attribute name, while the second specifies the new content.
setAttribute__params__name = String: the full name of the attribute
setAttribute__params__value = Number|String|Boolean: the value of the attribute
getContent__description__0 = Returns the content of an element. If there is no such content, defaultValue is returned if specified, otherwise null is returned.
getContent__returns = String:
getContent__params__defaultValue = String: (Optional) value returned if no content is found
setContent__description__0 = Sets the element's content.
setContent__params__text = String: the new content
serialize__description__0 = Serializes the element into a string. This function is useful for preparing the content to be sent over a http request or saved to file.
serialize__returns = String: Serialized string of the element
