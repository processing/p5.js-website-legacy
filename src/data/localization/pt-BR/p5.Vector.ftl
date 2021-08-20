mult__description__0 = Este método pode multiplicar o vetor por um valor escalar, multiplicar os valores x, y e z de um vetor, ou multiplicar os componentes x, y e z de dois vetores independentes. Ao multiplicar um vetor por um valor escalar, cada variável que o compõe será multiplicada pelo valor. Ao multiplicar dois vetores, os valores dos vetores serão multiplicados individualmente um pelo outro -- por exemplo, com dois vetores A e B, teremos como resultado: [A.x * B.x, A.y * B.y, A.z * B.z].
mult__description__1 = A versão estática do método retorna um novo <a href="#/p5.Vector">p5.Vector</a>, enquanto a versão não-estática modifica o vetor diretamente.
mult__description__2 = Além disso, você pode utilizar uma array como argumento. Veja os exemplos para compreender o método em seu contexto.
mult__params__n = Número: o número a ser multiplicado pelo vetor.
mult__params__x = Número: o número a ser multiplicado pelo valor x do vetor
mult__params__y = Número: o número a ser multiplicado pelo valor y do vetor
mult__params__z = Número (opcional): o número a ser multiplicado pelo valor z do vetor
mult__params__arr = Número[]: a array a ser multiplicada pelos valores do vetor
mult__params__v = p5.Vector: o vetor a ser multiplicado pelos valores do vetor original
mult__params__target = p5.Vector (opcional): o vetor que receberá o resultado
mult__params__v0 = p5.Vector: um vetor a ser multiplicado
mult__params__v1 = p5.Vector: um vetor a ser multiplicado
div__description__0 = Este método pode dividir o vetor por um valor escalar, dividir os valores x, y e z de um vetor, ou dividir os componentes x, y e z de dois vetores independentes. Ao dividir um vetor por um valor escalar, cada variável que o compõe será dividida pelo valor. Ao dividir um vetor por outro, cada valor do vetor original será dividido pelo valor correspondente do outro -- por exemplo, com dois vetores A e B, teremos como resultado: [A.x / B.x, A.y / B.y, A.z / B.z].
div__description__1 = A versão estática do método retorna um novo <a href="#/p5.Vector">p5.Vector</a>, enquanto a versão não-estática modifica o vetor diretamente.
div__description__2 = Além disso, você pode utilizar uma array como argumento. Veja os exemplos para compreender o método em seu contexto.
div__params__n = Número: o número pelo qual o vetor será dividido
div__params__x = Número: o número pelo qual o valor x do vetor será dividido
div__params__y = Número: o número pelo qual o valor y do vetor será dividido
div__params__z = Número (opcional): o número pelo qual o valor z do vetor será dividido
div__params__arr = Número[]: a array pelo qual os valores do vetor serão divididos
div__params__v = p5.Vector: o vetor cujos valores irão dividir o vetor original
div__params__target = p5.Vector (opcional): o vetor que receberá o resultado
div__params__v0 = p5.Vector: um vetor a ser dividido
div__params__v1 = p5.Vector: um vetor cujos valores irão dividir o vetor original
mag__description__0 = Calcula a magnitude (comprimento) de um vetor, e retorna um número. Corresponde à equação <code>sqrt(x*x + y*y + z*z)</code>.
mag__returns = Número: magnitude do vetor
mag__params__vecT = p5.Vector: o vetor que se quer saber a magnitude
magSq__description__0 = Calcula a magnitude (comprimento) quadrada do vetor, e retorna um número. Corresponde à equação <em>(x*x + y*y + z*z)</em>. É mais veloz caso o comprimento real não seja necessário ao comparar vetores.
magSq__returns = Número: magnitude quadrada do vetor
dot__description__0 = Calcula o produto escalar de dois vetores. A versão deste método que computa o produto escalar de dois vetores independentes é o método estático. Veja os exemplos para compreender o método em seu contexto.
dot__returns = Número: o produto escalar
dot__params__x = Número: componente x do vetor
dot__params__y = Número (opcional): componente y do vetor
dot__params__z = Número (opcional): componente z do vetor
dot__params__value = p5.Vector: os valores de um vetor, ou um <a href="#/p5.Vector">p5.Vector</a>
dot__params__v1 = <a href="#/p5.Vector">p5.Vector</a>: o primeiro vetor
dot__params__v2 = <a href="#/p5.Vector">p5.Vector</a>: o segundo vetor
cross__description__0 = Calcula e retorna o produto vetorial entre dois vetores. Tanto o modo estático quando o modo não-estático retornam um novo <a href="#/p5.Vector">p5.Vector</a>. Veja os exemplos para compreender o método em seu contexto.
cross__returns = p5.Vector: <a href="#/p5.Vector">p5.Vector</a> resultante do produto escalar
cross__params__v = p5.Vector: <a href="#/p5.Vector">p5.Vector</a> a ser comparado
cross__params__v1 = p5.Vector: o primeiro <a href="#/p5.Vector">p5.Vector</a>
cross__params__v2 = p5.Vector: o segundo <a href="#/p5.Vector">p5.Vector</a>
dist__description__0 = Calcula a distância euclidiana entre dois pontos, considerando um ponto como um vetor.
dist__returns = Número: a distância
dist__params__v = p5.Vector: o <a href="#/p5.Vector">p5.Vector</a> para calcular a distância
dist__params__v1 = p5.Vector: o primeiro <a href="#/p5.Vector">p5.Vector</a>
dist__params__v2 = p5.Vector: o segundo <a href="#/p5.Vector">p5.Vector</a>
normalize__description__0 = Normalizar o vetor para comprimento 1 — transformá-lo em um vetor unitário.
normalize__returns = p5.Vector: o <a href="#/p5.Vector">p5.Vector</a> normalizado
normalize__params__v = p5.Vector: o vetor a ser normalizado
normalize__params__target = p5.Vector (opcional): o vetor para receber o resultado
limit__description__0 = Limita a magnitude (comprimento) do vetor ao valor dado como parâmetro.
limit__params__max = Número: valor máximo para a magnitude do vetor
setMag__description__0 = Transforma a magnitude (comprimento) do vetor no valor dado como parâmetro.
setMag__params__len = Número: o novo comprimento do vetor
heading__description__0 = Calcula o ângulo de rotação de um vetor 2D. <a href="#/p5.Vector">p5.Vectors</a> criados utilizando a função <a src="#/p5/createVector">createVector()</a> utilizarão graus ou radianos, de acordo com o modo de ângulo (<a = src="#/p5/angleMode">angleMode</a>) definido no código.
heading__returns = Número: o ângulo de rotação
setHeading__description__0 = Rotaciona um vetor 2D até um ângulo específico. A magnitude (comprimento) permanece a mesma.
setHeading__params__angle = Número: o ângulo de rotação
rotate__description__0 = Rotaciona um vetor em 2D pelo ângulo dado como parâmetro. A magnitude (comprimento) permanece a mesma.
rotate__params__angle = Número: o ângulo de rotação
rotate__params__v = vetor a ser rotacionado
rotate__params__target = p5.Vector (opcional): um vetor para receber o resultado
angleBetween__description__0 = Calcula e retorna o ângulo entre dois vetores em radianos.
angleBetween__returns = Número: o ângulo entre os vetores (em radianos)
angleBetween__params__value = p5.Vector: os componentes x, y e z de um <a href="#/p5.Vector">p5.Vector</a>
lerp__description__0 = Interpolação linear entre dois vetores.
lerp__params__x = Número: o componente x do vetor
lerp__params__y = Número: o componente y do vetor
lerp__params__z = Número: o componente z do vetor
lerp__params__amt = Número: a quatia de interpolação — um valor entre 0.0 (primeiro vetor) e 1.0 (segundo vetor). 0.9 é bem próximo do segundo vetor, 0.5 é entre os dois.
lerp__params__v = p5.Vector: o vetor para interpolar
lerp__params__v1 = p5.Vector: o primeiro vetor
lerp__params__v2 = p5.Vector: o segundo vetor
lerp__params__target = p5.Vector (opcional): o vetor para receber o resultado
reflect__description__0 = Reflete o vetor incidente, resultando em sua normal como uma linha em 2D, ou um plano em 3D. Este método age diretamente no vetor.
reflect__params__surfaceNormal = p5.Vector: o <a href="#/p5.Vector">p5.Vector</a> a ser refletido, que será normalizado pelo método.
array__description__0 = Retorna uma representação do vetor como uma array de números. Isto é somente para uso temporário. Se utilizado de outra maneira, o conteúdo deve ser copiado usando o método <b>p5.Vector.<a href="#/p5.Vector/copy">copy()</a></b> para criar uma nova array.
array__returns = Número[]: uma Array com três valores
equals__description__0 = Checa se o vetor é igual a outro.
equals__returns = Booleano: retorna true (verdadeiro) caso os vetores sejam iguais, ou false (falso) caso não sejam
equals__params__x = Número (opcional): o componente x do vetor
equals__params__y = Número (opcional): o componente y do vetor
equals__params__z = Número (opcional): o componente z do vetor
equals__params__value = p5.Vector|Array: o vetor a ser comparado
fromAngle__description__0 = Faz um novo vetor 2D a partir de um ângulo.
fromAngle__returns = p5.Vector: um novo <a href="#/p5.Vector">p5.Vector</a>
fromAngle__params__angle = Número: o ângulo desejado em radianos (não é afetado pelo modo de ângulo — <a href="#/p5/angleMode">angleMode</a>)
fromAngle__params__length = Número (opcional): o comprimento do novo vetor — caso não seja declarado, utiliza o valor 1 por padrão
fromAngles__description__0 = Cria um novo vetor 3D a partir de um par de ângulos em coordenadas esféricas. Utiliza o padrão norte-americano (<a href="https://www.iso.org/standard/64973.html" target="_blank">ISO</a>).
fromAngles__returns = p5.Vector: o novo <a href="#/p5.Vector">p5.Vector</a>
fromAngles__params__theta = Número: ângulo polar (também conhecido como colatidude ou ângulo zenital) — ângulo que o vetor faz com o eixo Z positivo, em radianos; 0 significa para cima
fromAngles__params__phi = Número: azimute (ou longitude) — ângulo que a projeção do vetor sobre o eixo XY faz com o eixo X positivo, em radianos
fromAngles__params__length = Número (opcional): o comprimento do novo vetor — caso não seja especificado, é utilizado como padrão o valor 1
random2D__description__0 = Cria um novo vetor unitário 2D a partir de um ângulo aleatório.
random2D__returns = p5.Vector: um novo <a href="#/p5.Vector">p5.Vector</a>
random3D__description__0 = Cria um novo vetor unitário 3D aleatório.
random3D__returns = p5.Vector: um novo <a href="#/p5.Vector">p5.Vector</a>
