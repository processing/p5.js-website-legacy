description__0 = Los objetos Table almacenan datos con múltiples filas y columnas, tal como una hoja de cálculo tradicional. Los objetos Table pueden ser generados desde cero, dinámicamente, o usando datos desde un archivo existente.
params__rows = Arreglo: un arreglo de objetos p5.TableRow
columns__description__0 = Una matriz que contiene los nombres de las columnas en la tabla, si el "header" la tabla se carga con el parámetro "header".
rows__description__0 = Una matriz que contiene los objetos <a href="#/p5.Table">p5.TableRow</a> que forman las filas de la tabla. El mismo resultado que llamar <a href="#/p5/getRows">getRows()</a>
addRow__description__0 = Use <a href="#/p5/addRow">addRow()</a> para agregar una nueva fila de datos a un objeto <a href="#/p5.Table">p5.Table</a>. Por defecto, se crea una fila vacía. Por lo general, almacenaría una referencia a la nueva fila en un objeto TableRow (consulte newRow en el ejemplo anterior) y luego establecería valores individuales usando <a href="#/p5/set">set()</a>.
addRow__description__1 = Si se incluye un objeto <a href="#/p5.TableRow">p5.TableRow</a> como parámetro, entonces esa fila se duplica y se agrega a la tabla.
removeRow__description__0 = Elimina una fila del objeto de tabla.
getRow__description__0 = Devuelve una referencia al <a href="#/p5.TableRow">p5.TableRow</a> especificado. La referencia se puede utilizar para obtener y establecer valores de la fila seleccionada.
getRows__description__0 = Obtiene todas las filas de la tabla. Devuelve una matriz de <a href="#/p5.TableRow">p5.TableRow</a>s.
findRow__description__0 = Encuentra la primera fila de la tabla que contiene el valor proporcionado y devuelve una referencia a esa fila. Incluso si varias filas son posibles coincidencias, solo se devuelve la primera fila coincidente. La columna a buscar puede especificarse por su ID o título.
findRow__returns = p5.TableRow:
findRows__description__0 = Encuentra las filas en la tabla que contienen el valor proporcionado y devuelve referencias a esas filas. Devuelve una matriz, por lo que debe usarse para recorrer en iteración todas las filas, como se muestra en el ejemplo anterior. La columna a buscar puede especificarse por su ID o título.
matchRow__description__0 = Encuentra la primera fila de la tabla que coincide con la expresión regular proporcionada y devuelve una referencia a esa fila. Incluso si varias filas son posibles coincidencias, solo se devuelve la primera fila coincidente. La columna a buscar puede especificarse por su ID o título.
matchRows__description__0 = Encuentra las filas en la tabla que coinciden con la expresión regular proporcionada y devuelve referencias a esas filas. Devuelve una matriz, por lo que debe usarse para recorrer en iteración todas las filas, como se muestra en el ejemplo. La columna a buscar puede especificarse por su ID o título.
getColumn__description__0 = Recupera todos los valores en la columna especificada y los devuelve como una matriz. La columna se puede especificar por su ID o título.
clearRows__description__0 = Elimina todas las filas de una tabla. Mientras se eliminan todas las filas, se mantienen las columnas y los títulos de las columnas.
getColumnCount__description__0 = Devuelve el número total de columnas en una tabla.
getRowCount__description__0 = Devuelve el número total de filas en una tabla.
removeTokens__description__0 = Elimina cualquiera de los caracteres especificados (o "tokens").
removeTokens__description__1 = Si no se especifica ninguna columna, se procesan los valores en todas las columnas y filas. Se puede hacer referencia a una columna específica por su ID o título.
trim__description__0 = Recorta los espacios en blanco iniciales y finales, como los espacios y las pestañas, a partir de los valores de la tabla de cadenas. Si no se especifica ninguna columna, los valores en todas las columnas y filas se recortan. Se puede hacer referencia a una columna específica por su ID o título.
set__description__0 = Almacena un valor en la fila y columna especificadas de la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
setNum__description__0 = Almacena un valor flotante en la fila y columna especificadas de la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
setString__description__0 = Almacena un valor de cadena en la fila y columna especificadas de la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
get__description__0 = Recupera un valor de la fila y columna especificadas en la Tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
getNum__description__0 = Recupera un valor flotante de la fila y columna especificadas en la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
getString__description__0 = Recupera un valor de cadena de la fila y columna especificadas en la tabla. La fila se especifica por su ID, mientras que la columna se puede especificar por su ID o título.
getObject__description__0 = Recupera todos los datos de la tabla y los devuelve como un objeto. Si se pasa un nombre de columna, cada objeto de fila se almacenará con ese atributo como título.
getArray__description__0 = Recupera todos los datos de la tabla y los devuelve como una matriz multidimensional.
