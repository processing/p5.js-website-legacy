description__0 = <a href="#/p5.Table">Table</a> objects store data with multiple rows and columns, much like in a traditional spreadsheet. Tables can be generated from scratch, dynamically, or using data from an existing file.
params__rows = p5.TableRow[]: (Optional) An array of p5.TableRow objects
columns__description__0 = An array containing the names of the columns in the table, if the "header" the table is loaded with the "header" parameter.
rows__description__0 = An array containing the <a href="#/p5.Table">p5.TableRow</a> objects that make up the rows of the table. The same result as calling <a href="#/p5/getRows">getRows()</a>
addRow__description__0 = Use <a href="#/p5/addRow">addRow()</a> to add a new row of data to a <a href="#/p5.Table">p5.Table</a> object. By default, an empty row is created. Typically, you would store a reference to the new row in a TableRow object (see newRow in the example above), and then set individual values using <a href="#/p5/set">set()</a>.
addRow__description__1 = If a <a href="#/p5.TableRow">p5.TableRow</a> object is included as a parameter, then that row is duplicated and added to the table.
addRow__returns = p5.TableRow: the row that was added
addRow__params__row = p5.TableRow: (Optional) row to be added to the table
removeRow__description__0 = Removes a row from the table object.
removeRow__params__id = Integer: ID number of the row to remove
getRow__description__0 = Returns a reference to the specified <a href="#/p5.TableRow">p5.TableRow</a>. The reference can then be used to get and set values of the selected row.
getRow__returns = p5.TableRow: <a href="#/p5.TableRow">p5.TableRow</a> object
getRow__params__rowID = Integer: ID number of the row to get
getRows__description__0 = Gets all rows from the table. Returns an array of <a href="#/p5.TableRow">p5.TableRow</a>s.
getRows__returns = p5.TableRow[]: Array of <a href="#/p5.TableRow">p5.TableRow</a>s
findRow__description__0 = Finds the first row in the Table that contains the value provided, and returns a reference to that row. Even if multiple rows are possible matches, only the first matching row is returned. The column to search may be specified by either its ID or title.
findRow__returns = p5.TableRow:
findRow__params__value = String: The value to match
findRow__params__column = Integer|String: ID number or title of the  column to search
findRows__description__0 = Finds the rows in the Table that contain the value provided, and returns references to those rows. Returns an Array, so for must be used to iterate through all the rows, as shown in the example above. The column to search may be specified by either its ID or title.
findRows__returns = p5.TableRow[]: An Array of TableRow objects
findRows__params__value = String: The value to match
findRows__params__column = Integer|String: ID number or title of the  column to search
matchRow__description__0 = Finds the first row in the Table that matches the regular expression provided, and returns a reference to that row. Even if multiple rows are possible matches, only the first matching row is returned. The column to search may be specified by either its ID or title.
matchRow__returns = p5.TableRow: TableRow object
matchRow__params__regexp = String|RegExp: The regular expression to match
matchRow__params__column = String|Integer: The column ID (number) or  title (string)
matchRows__description__0 = Finds the rows in the Table that match the regular expression provided, and returns references to those rows. Returns an array, so for must be used to iterate through all the rows, as shown in the example. The column to search may be specified by either its ID or title.
matchRows__returns = p5.TableRow[]: An Array of TableRow objects
matchRows__params__regexp = String: The regular expression to match
matchRows__params__column = String|Integer: (Optional) The column ID (number) or  title (string)
getColumn__description__0 = Retrieves all values in the specified column, and returns them as an array. The column may be specified by either its ID or title.
getColumn__returns = Array: Array of column values
getColumn__params__column = String|Number: String or Number of the column to return
clearRows__description__0 = Removes all rows from a Table. While all rows are removed, columns and column titles are maintained.
addColumn__description__0 = Use <a href="#/p5/addColumn">addColumn()</a> to add a new column to a <a href="#/p5.Table">Table</a> object. Typically, you will want to specify a title, so the column may be easily referenced later by name. (If no title is specified, the new column's title will be null.)
addColumn__params__title = String: (Optional) title of the given column
getColumnCount__description__0 = Returns the total number of columns in a Table.
getColumnCount__returns = Integer: Number of columns in this table
getRowCount__description__0 = Returns the total number of rows in a Table.
getRowCount__returns = Integer: Number of rows in this table
removeTokens__description__0 = Removes any of the specified characters (or "tokens").
removeTokens__description__1 = If no column is specified, then the values in all columns and rows are processed. A specific column may be referenced by either its ID or title.
removeTokens__params__chars = String: String listing characters to be removed
removeTokens__params__column = String|Integer: (Optional) Column ID (number)  or name (string)
trim__description__0 = Trims leading and trailing whitespace, such as spaces and tabs, from String table values. If no column is specified, then the values in all columns and rows are trimmed. A specific column may be referenced by either its ID or title.
trim__params__column = String|Integer: (Optional) Column ID (number)  or name (string)
removeColumn__description__0 = Use <a href="#/p5/removeColumn">removeColumn()</a> to remove an existing column from a Table object. The column to be removed may be identified by either its title (a String) or its index value (an int). removeColumn(0) would remove the first column, removeColumn(1) would remove the second column, and so on.
removeColumn__params__column = String|Integer: columnName (string) or ID (number)
set__description__0 = Stores a value in the Table's specified row and column. The row is specified by its ID, while the column may be specified by either its ID or title.
set__params__row = Integer: row ID
set__params__column = String|Integer: column ID (Number)  or title (String)
set__params__value = String|Number: value to assign
setNum__description__0 = Stores a Float value in the Table's specified row and column. The row is specified by its ID, while the column may be specified by either its ID or title.
setNum__params__row = Integer: row ID
setNum__params__column = String|Integer: column ID (Number)  or title (String)
setNum__params__value = Number: value to assign
setString__description__0 = Stores a String value in the Table's specified row and column. The row is specified by its ID, while the column may be specified by either its ID or title.
setString__params__row = Integer: row ID
setString__params__column = String|Integer: column ID (Number)  or title (String)
setString__params__value = String: value to assign
get__description__0 = Retrieves a value from the Table's specified row and column. The row is specified by its ID, while the column may be specified by either its ID or title.
get__returns = String|Number:
get__params__row = Integer: row ID
get__params__column = String|Integer: columnName (string) or  ID (number)
getNum__description__0 = Retrieves a Float value from the Table's specified row and column. The row is specified by its ID, while the column may be specified by either its ID or title.
getNum__returns = Number:
getNum__params__row = Integer: row ID
getNum__params__column = String|Integer: columnName (string) or  ID (number)
getString__description__0 = Retrieves a String value from the Table's specified row and column. The row is specified by its ID, while the column may be specified by either its ID or title.
getString__returns = String:
getString__params__row = Integer: row ID
getString__params__column = String|Integer: columnName (string) or  ID (number)
getObject__description__0 = Retrieves all table data and returns as an object. If a column name is passed in, each row object will be stored with that attribute as its title.
getObject__returns = Object:
getObject__params__headerColumn = String: (Optional) Name of the column which should be used to  title each row object (optional)
getArray__description__0 = Retrieves all table data and returns it as a multidimensional array.
getArray__returns = Array:
