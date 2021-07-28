description__0 = Los objetos Table almacenan datos con múltiples filas y columnas, tal como una hoja de cálculo tradicional. Los objetos Table pueden ser generados desde cero, dinámicamente, o usando datos desde un archivo existente.
params__rows = Arreglo: un arreglo de objetos p5.TableRow
columns__description__0 = Una matriz que contiene los nombres de las columnas en la tabla, si el "header" la tabla se carga con el parámetro "header".
rows__description__0 = Una matriz que contiene los objetos <a href="#/p5.Table">p5.TableRow</a> que forman las filas de la tabla. El mismo resultado que llamar <a href="#/p5/getRows">getRows()</a>
addRow__description__0 = Use <a href="#/p5/addRow">addRow()</a> para agregar una nueva fila de datos a un objeto <a href="#/p5.Table">p5.Table</a>. Por defecto, se crea una fila vacía. Por lo general, almacenaría una referencia a la nueva fila en un objeto TableRow (consulte newRow en el ejemplo anterior) y luego establecería valores individuales usando <a href="#/p5/set">set()</a>.
addRow__description__1 = Si se incluye un objeto <a href="#/p5.TableRow">p5.TableRow</a> como parámetro, entonces esa fila se duplica y se agrega a la tabla.
addRow__returns = p5.TableRow: the row that was added
addRow__params__row = p5.TableRow: (Optional) row to be added to the table
removeRow__description__0 = Elimina una fila del objeto de tabla.
removeRow__params__id = Integer: ID number of the row to remove
getRow__description__0 = Devuelve una referencia al <a href="#/p5.TableRow">p5.TableRow</a> especificado. La referencia se puede utilizar para obtener y establecer valores de la fila seleccionada.
getRow__returns = p5.TableRow: <a href="#/p5.TableRow">p5.TableRow</a> object
getRow__params__rowID = Integer: ID number of the row to get
getRows__description__0 = Obtiene todas las filas de la tabla. Devuelve una matriz de <a href="#/p5.TableRow">p5.TableRow</a>s.
getRows__returns = p5.TableRow[]: Array of <a href="#/p5.TableRow">p5.TableRow</a>s
findRow__description__0 = Encuentra la primera fila de la tabla que contiene el valor proporcionado y devuelve una referencia a esa fila. Incluso si varias filas son posibles coincidencias, solo se devuelve la primera fila coincidente. La columna a buscar puede especificarse por su ID o título.
findRow__returns = p5.TableRow:
findRow__params__value = String: The value to match
findRow__params__column = Integer|String: ID number or title of the  column to search
findRows__description__0 = Encuentra las filas en la tabla que contienen el valor proporcionado y devuelve referencias a esas filas. Devuelve una matriz, por lo que debe usarse para recorrer en iteración todas las filas, como se muestra en el ejemplo anterior. La columna a buscar puede especificarse por su ID o título.
findRows__returns = p5.TableRow[]: An Array of TableRow objects
findRows__params__value = String: The value to match
findRows__params__column = Integer|String: ID number or title of the  column to search
matchRow__description__0 = Encuentra la primera fila de la tabla que coincide con la expresión regular proporcionada y devuelve una referencia a esa fila. Incluso si varias filas son posibles coincidencias, solo se devuelve la primera fila coincidente. La columna a buscar puede especificarse por su ID o título.
matchRow__returns = p5.TableRow: TableRow object
matchRow__params__regexp = String|RegExp: The regular expression to match
matchRow__params__column = String|Integer: The column ID (number) or  title (string)
matchRows__description__0 = Encuentra las filas en la tabla que coinciden con la expresión regular proporcionada y devuelve referencias a esas filas. Devuelve una matriz, por lo que debe usarse para recorrer en iteración todas las filas, como se muestra en el ejemplo. La columna a buscar puede especificarse por su ID o título.
matchRows__returns = p5.TableRow[]: An Array of TableRow objects
matchRows__params__regexp = String: The regular expression to match
matchRows__params__column = String|Integer: (Optional) The column ID (number) or  title (string)
getColumn__description__0 = Recupera todos los valores en la columna especificada y los devuelve como una matriz. La columna se puede especificar por su ID o título.
getColumn__returns = Array: Array of column values
getColumn__params__column = String|Number: String or Number of the column to return
clearRows__description__0 = Elimina todas las filas de una tabla. Mientras se eliminan todas las filas, se mantienen las columnas y los títulos de las columnas.
addColumn__description__0 = Use <a href="#/p5/addColumn">addColumn()</a> para agregar una nueva columna a un objeto <a href="#/p5.Table">Table</a>. Por lo general, querrá especificar un título, por lo que la columna puede ser referenciada fácilmente más tarde por su nombre. (Si no se especifica ningún título, el título de la nueva columna será nulo).
addColumn__params__title = String: (Optional) title of the given column
getColumnCount__description__0 = Devuelve el número total de columnas en una tabla.
getColumnCount__returns = Integer: Number of columns in this table
getRowCount__description__0 = Devuelve el número total de filas en una tabla.
getRowCount__returns = Integer: Number of rows in this table
removeTokens__description__0 = Elimina cualquiera de los caracteres especificados (o "tokens").
removeTokens__description__1 = Si no se especifica ninguna columna, se procesan los valores en todas las columnas y filas. Se puede hacer referencia a una columna específica por su ID o título.
removeTokens__params__chars = String: String listing characters to be removed
removeTokens__params__column = String|Integer: (Optional) Column ID (number)  or name (string)
trim__description__0 = Recorta los espacios en blanco iniciales y finales, como los espacios y las pestañas, a partir de los valores de la tabla de cadenas. Si no se especifica ninguna columna, los valores en todas las columnas y filas se recortan. Se puede hacer referencia a una columna específica por su ID o título.
trim__params__column = String|Integer: (Optional) Column ID (number)  or name (string)
removeColumn__description__0 = Use <a href="#/p5/removeColumn">removeColumn()</a> para eliminar una columna existente de un objeto Table. La columna que se eliminará puede identificarse por su título (una Cadena) o su valor de índice (un int). removeColumn (0) eliminaría la primera columna, removeColumn (1) eliminaría la segunda columna, y así sucesivamente.
removeColumn__params__column = String|Integer: columnName (string) or ID (number)
set__description__0 = Almacena un valor en la fila y columna especificadas de la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
set__params__row = Integer: row ID
set__params__column = String|Integer: column ID (Number)  or title (String)
set__params__value = String|Number: value to assign
setNum__description__0 = Almacena un valor flotante en la fila y columna especificadas de la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
setNum__params__row = Integer: row ID
setNum__params__column = String|Integer: column ID (Number)  or title (String)
setNum__params__value = Number: value to assign
setString__description__0 = Almacena un valor de cadena en la fila y columna especificadas de la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
setString__params__row = Integer: row ID
setString__params__column = String|Integer: column ID (Number)  or title (String)
setString__params__value = String: value to assign
get__description__0 = Recupera un valor de la fila y columna especificadas en la Tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
get__returns = String|Number:
get__params__row = Integer: row ID
get__params__column = String|Integer: columnName (string) or  ID (number)
getNum__description__0 = Recupera un valor flotante de la fila y columna especificadas en la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
getNum__returns = Number:
getNum__params__row = Integer: row ID
getNum__params__column = String|Integer: columnName (string) or  ID (number)
getString__description__0 = Recupera un valor de cadena de la fila y columna especificadas en la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
getString__returns = String:
getString__params__row = Integer: row ID
getString__params__column = String|Integer: columnName (string) or  ID (number)
getObject__description__0 = Recupera todos los datos de la tabla y los devuelve como un objeto. Si se pasa un nombre de columna, cada objeto de fila se almacenará con ese atributo como título.
getObject__returns = Object:
getObject__params__headerColumn = String: (Optional) Name of the column which should be used to  title each row object (optional)
getArray__description__0 = Recupera todos los datos de la tabla y los devuelve como una matriz multidimensional.
getArray__returns = Array:
