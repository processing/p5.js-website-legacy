description__0 = Este é o construtor de intâncias p5.
description__1 = Uma instância p5 contém todas as propriedades e métodos relacionados a um sketch de p5. Ela gerencia os pedidos de um sketch e também pode servir como um parâmetro de node opcional para atrelar um canvas p5 a um node. O sketch gerado usa as novas instances (instâncias) p5 como um novo argumento e pode opcionalmente criar um <a href="#/p5/preload">preload()</a>, <a href="#/p5/setup">setup()</a>, e/ou <a href="#/p5/draw">draw()</a> as propriedades de um sketch que já está rodando.
description__2 = Um sketch p5 pode rodar em modo "global" ou modo "instance": "global" - todas as propriedades e métodos estão atrelados à janela "instance" - todas as propriedades e métodos estão atrelados ao este objeto p5
returns = P5: uma instância p5
params__sketch = Função: uma closure (clausura) que pode definir um <a href="#/p5/preload">preload()</a> opcional,  <a href="#/p5/setup">setup()</a>, e/ou <a href="#/p5/draw">draw()</a> as propriedades de uma p5 instance
params__node = HTMLElement: (Optional) element to attach canvas to
describe__description__0 = Cria uma descrição acessível a leitores de tela para a canvas. O primeiro parâmetro deve ser uma string com a descrição da canvas. O segundo parâmetro é opcional. Se especificado, ele determina como a descrição será mostrada.
describe__description__1 = <code class="language-javascript">describe(texto, LABEL)</code> apresenta a descrição a todas as pessoas como uma <a href="https://en.wikipedia.org/wiki/Museum_label" target="_blank">ETIQUETA DE MUSEU *****</a> em uma <code class="language-javascript"><div class="p5Label"></div></code> próxima à canvas. Você pode utilizar CSS para alterar a aparência dessa legenda.
describe__description__2 = <code class="language-javascript">describe(texto, FALLBACK)</code> torna a descrição acessível somente para pessoas utilizando leitores de tela, em um <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank"> sub DOM dentro do elemento canvas</a>. Se um segundo parâmetro não for especificado, por padrão, a descrição somente será acessível para pessoas que utilizem leitores de tela.
describe__params__text = String: descrição da canvas
describe__params__display = Constante (opcional): LABEL ou FALLBACK
describeElement__description__0 = Esta função cria uma descrição acessível a leitores de tela para elementos - formas ou grupos de formas que só têm significado juntas — na canvas. O primeiro parâmetro deve ser o nome do elemento. O segundo parâmetro deve ser uma string com a descrição do elemento. O terceiro parâmetro é opcional. Se especificado, ele determina como a descrição do elemento será mostrada.
describeElement__description__1 = <code class="language-javascript">describeElement(nome, texto, LABEL)</code> mostra a descrição do elemento a todas as pessoas como uma <a href="https://en.wikipedia.org/wiki/Museum_label" target="_blank">ETIQUETA DE MUSEU *****/caption</a> em uma <code class="language-javascript"><div class="p5Label"></div></code> adjacente à canvas. Você pode definir o estilo como quiser no seu CSS.
describeElement__description__2 = <code class="language-javascript">describeElement(nome, texto, FALLBACK)</code> torna a descrição do elemento acessível somente a pessoas que estejam utilizando leitores de tela, em <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank">um sub DOM dentro do elemento canvas</a>. Se um segundo parâmetro não for definido, por padrão a descrição do elemento estará disponível apenas a pessoas que façam uso de leitores de tela.
describeElement__params__name = String: nome do elemento
describeElement__params__text = String: descrição do elemento
describeElement__params__display = Constante (opcional): LABEL ou FALLBACK
textOutput__description__0 = <code class="language-javascript">textOutput()</code> cria uma descrição em inglês das formas presentes na canvas de forma acessível a leitores de tela. A descrição geral da canvas inclui tamanho, cor, e o número de elementos na tela. Exemplo: 'Your output is a, 400 by 400 pixels, lavender blue canvas containing the following 4 shapes:" (em português: "Seu resultado é uma canvas lavanda-azulado, de 400 por 400 pixels, contendo as seguintes formas:"), seguida de uma lista descrevendo a cor, posição e área de cada forma — exemplo: "orange ellipse at top left covering 1% of the canvas" (em português: uma elipse alaranjada no canto superior esquerdo cobrindo 1% da canvas). Cada elemento pode ser selecionado para acessar mais detalhes. Uma tabela de elementos também é fornecida. Nesta tabela são descritas a forma, cor, localização, coordenadas e área — exemplo: "orange ellipse location=top left area=2" (em português: "laranja | elipse | localização = superior esquerda | área = 2").
textOutput__description__1 = <code class="language-javascript">textOutput()</code> e <code class="language-javascript">texOutput(FALLBACK)</code> disponibilizam a descrição em <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank">um sub DOM dentro do elemento canvas</a>, sendo acessível através do uso de leitores de tela. <code class="language-javascript">textOutput(LABEL)</code> cria um elemento <code class="language-javascript">div</code> ao lado da canvas para conter o texto. Isto pode ser interessante para que pessoas que não utilizam leitores de tela possam visualizar a descrição enquanto programam. Porém, é importante notar que usar o parâmetro LABEL no código final irá criar redundância para leitores de tela. Recomendamos utilizar LABEL somente como parte do desenvolvimento do código, e removê-lo antes de publicar e compartilhar seu código com pessoas que utilizam leitores de tela.
textOutput__params__display = Constante (opcional): FALLBACK ou LABEL
gridOutput__description__0 = <code class="language-javascript">gridOutput()</code> mostra o conteúdo da canvas na forma de uma grade (tabela HTML), baseando-se na localização de cada forma. Uma breve descrição da canvas em inglês é disponibilizada antes das informações da tabela. Esta descrição inclui: cor do fundo, tamanho da canvas, número de objetos, e tipos de objetos — exemplo: "lavender blue canvas is 200 by 200 and contains 4 objects - 3 ellipses 1 rectangle" (em português: "canvas lavanda-azulada mede 200 por 200 pixels e contém 4 objetos — 3 elipses 1 retângulo"). A tabela descreve o conteúdo espacialmente, cada elemento é posicionado em uma célula da tabela a depender de sua posição. Cada célula apresenta a cor e o tipo de forma do elemento correspondente — exemplo: "orange ellipse" (em português: "elipse laranja"). As descrições podem ser selecionadas individualmente para mais detalhes. Também disponibiliza uma lista descritiva contendo forma, cor, localização e área de cada elemento — examplo: "orange ellipse location=top left area=1%" (em português: "elipse laranja localização = topo à esquerdo | área = 1%).
gridOutput__description__1 = <code class="language-javascript">gridOutput()</code> e <code class="language-javascript">gridOutput(FALLBACK)</code> disponibilizam a descrição em <a href="https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API/Tutorial/Hit_regions_and_accessibility" target="_blank">um sub DOM dentro do elemento canvas</a>, sendo acessível através do uso de leitores de tela. <code class="language-javascript">gridOutput(LABEL)</code> cria um elemento <code class="language-javascript">div</code> ao lado da canvas para conter o texto. Isto pode ser interessante para que pessoas que não utilizam leitores de tela possam visualizar a descrição enquanto programam. Porém, é importante notar que usar o parâmetro LABEL no código final irá criar redundância para leitores de tela. Recomendamos utilizar LABEL somente como parte do desenvolvimento do código, e removê-lo antes de publicar e compartilhar seu código com pessoas que utilizam leitores de tela.
gridOutput__params__display = Constante (opcional): FALLBACK ou LABEL
alpha__description__0 = Extrai o valor de transparência (alpha) de uma cor ou de uma array de pixels.
alpha__returns = Número: o valor de transparência (alpha) presente na cor especificada
alpha__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
blue__description__0 = Extrai o valor de azul de uma cor ou de uma array de pixels.
blue__returns = Número: o valor de azul presente na cor especificada
blue__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
brightness__description__0 = Extrai o valor do brilho de uma cor ou array de pixels seguindo o modo de cor HSB.
brightness__returns = Número: o valor do brilho da cor especificada
brightness__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
color__description__0 = Cria um objeto para armazenar variáveis do tipo cor. Os parâmetros são interpretados como valores RGB ou HSB dependendo do modo de cor definido (<a href="#/p5/colorMode">colorMode()</a>). O modo padrão usa valores RGB de 0 a 255 e, logo, a função color(255, 204, 0) retornará um amarelo claro.
color__description__1 = Note que se apenas um valor for fornecido ao <a href="#/p5/color">color()</a> ele será interpretado como um valor em escala de cinza. Adicionando um segundo valor ele será interpretado como alpha (transparência). Quando três valores forem fornecidos eles serão interpretados como RGB (vermelho, verde e azul) ou HSB (matiz, saturação e brilho). Adicionando um quarto valor ele será usado como alpha (transparência).
color__description__2 = Também é possível passar à função um único argumento do tipo string. Assim, ele será interpretado como qualquer cor web nomeável, cores hex (#), rgb() ou rgba() (ver exemplos). Nesse caso, um valor para alpha não será possível pois a função não suporta um argumento do tipo número após uma string. Para cores com transparência, use o padrão RGBA.
color__returns = p5.Color: a cor resultante
color__params__gray = Número: valor único da cor em escala de cinza
color__params__alpha = Número (opcional): alpha (transparência) a ser adicionada à cor especificada (por padrão, são válidos valores entre 0-255)
color__params__v1 = Número: valor do vermelho em modo RGB ou da matiz de cor no modo HSB
color__params__v2 = Número: valor do verde em modo RGB ou da saturação de cor no modo HSB
color__params__v3 = Número: valor do azul em modo RGB ou do brilho de cor no modo HSB
color__params__value = String: string de cor — os formatos possíveis são: rgb() ou rgba() com números inteiros (0-255) ou porcentagens, hex de 3 ou de 6 dígitos, ou nomes de cores
color__params__values = Número[]: uma array contendo os valores de vermelho, verde, azul e alpha (transparência) da cor final
color__params__color = p5.Color
green__description__0 = Extrai o valor de verde de uma cor ou de uma array de pixels.
green__returns = Número: o valor de verde presente na cor especificada
green__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
hue__description__0 = Extrai o valor da matiz de uma cor ou de uma arrray de pixels.
hue__description__1 = Matiz (hue) está presente nos padrões de cor HSB e HSL. Esta função retornará a matiz normalizada de acordo com o padrão HSB quando um objeto contendo uma cor neste formato for fornecido, ou quando uma array de pixels for fornecida enquanto o sketch estiver utilizando HSB como modo de cor (<a href="#/p5/colorMode">colorMode()</a>). Porém, retornará uma matiz normalizada segundo o padrão HSL em qualquer outro caso. Os valores só serão diferentes se o valor máximo da matiz for diferente para cada sistema.
hue__returns = Número: a matiz da cor especificada
hue__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
lerpColor__description__0 = Mistura duas cores para encontrar uma terceira entre as duas. O parâmetro <code>amt</code> é a quantidade para interpolar entre dois valores, onde 0 é igual à primeira cor, e 1 é igual à segunda — 0.1 é muito próximo da primeira cor, 0.5 é a média, etc. Um valor menor que 0 será considerado igual a 0. Da mesma maneira, valores acima de 1 serão considerados iguais a 1. Este comportamento é diferente de <code><a href="#/p5/lerp">lerp()</a></code>, mas necessário para evitar números fora do intervalo que podem produzir cores e resultados inesperados.
lerpColor__description__1 = A maneira que as cores são interpoladas depende do modo de cor em uso (<code><a href="#/p5/colorMode">colorMode()</a></code>).
lerpColor__returns = p5.Color: a cor resultante da interpolação
lerpColor__params__c1 = p5.Color: cor a interpolar de (equivalente a 0)
lerpColor__params__c2 = p5.Color: cor a interpolar para (equivalente a 1)
lerpColor__params__amt = Número: número entre 0 e 1
lightness__description__0 = Extrai o valor do brilho de uma cor ou array de pixels seguindo o modo de cor HSL.
lightness__returns = Número: o valor do brilho da cor especificada
lightness__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
red__description__0 = Extrai o valor de vermelho de uma cor ou de uma array de pixels.
red__returns = Número: o valor de vermelho presente na cor especificada
red__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
saturation__description__0 = Extrai o valor de saturação da cor ou de uma array de pixels
saturation__description__1 = A Saturação funciona de forma diferente em HSB e HSL. Esta função retornará a saturação no modo HSB quando a cor ou array de pixels utilizar este formato, mas usará a saturação em HSL como padrão (caso não seja fornecido outro).
saturation__returns = Número: o valor de saturação da cor especificada
saturation__params__color = p5.Color | Número[] | String: objeto <a href="#/p5.Color">p5.Color</a>, valores dos componentes da cor ou cor CSS
background__description__0 = A função <a href="#/p5/background">background()</a> configura a cor de fundo da canvas. A cor padrão é transparente. Esta função geralmente é usada dentro de <a href="#/p5/draw">draw()</a> para limpar a tela no início de cada frame, mas pode ser usada dentro de <a href="#/p5/setup">setup()</a> para configurar o fundo no primeiro frame da animação ou se o fundo precisa ser configurado apenas uma vez.
background__description__1 = A cor é especificada em RGB, HSB ou HSL, dependendo do <a href="#/p5/colorMode">colorMode()</a> usado. (O modo padrão de cores é RGB, com cada atributo indo de 0 a 255). O alpha (transparência) padrão também vai de 0 a 255.
background__description__2 = Também é possível passar à função um único argumento do tipo string. Assim, ele será interpretado como qualquer cor web nomeável, cores hex (#), rgb() ou rgba() (ver exemplos). Nesse caso, um valor para alpha não será possível pois a função não suporta um argumento do tipo número após uma string. Para cores com transparência, use o padrão RGBA.
background__description__3 = Um objeto <a href="#/p5.Color">p5.Color</a> também pode ser utilizado para configurar a cor de fundo, ou ainda uma <a href="#/p5.Image">p5.Image</a> pode ser utilizada para configurar uma imagem de fundo.
background__description__4 = Uma <a href="#/p5.Image">p5.Image</a> também pode ser utilizada para configurar o plano de fundo.
background__params__color = p5.Color: qualquer valor criado pela função <a href="#/p5/color">color()</a>
background__params__colorstring = String: string de cor — os formatos possíveis são: rgb() ou rgba() com números inteiros (0-255) ou porcentagens, hex de 3 ou de 6 dígitos, ou nomes de cores
background__params__a = Número (opcional): a opacidade (alpha) do fundo em relação ao intervalo de cor que está sendo utilizado (por padrão: 0 a 255)
background__params__gray = Número: específica um valor entre branco e preto (escala de cinza)
background__params__v1 = Número: valor do vermelho em modo RGB ou da matiz de cor no modo HSB
background__params__v2 = Número: valor do verde em modo RGB ou da saturação de cor no modo HSB
background__params__v3 = Número: valor do azul em modo RGB ou do brilho de cor no modo HSB
background__params__values = Número[]: uma array contendo vermelho, verde, azul e o alpha (opacidade) da cor
background__params__image = p5.Image: imagem criada com os métodos <a href="#/p5/loadImage">loadImage()</a> ou <a href="#/p5/createImage">createImage()</a>, para configurar o fundo (deve ser do mesmo tamanho da janela do sketch)
clear__description__0 = Limpa os pixels dentro de um buffer (memória temporária), tornando-os transparentes. Esta função limpa apenas a canvas, ela não limpará os objetos criados pelos métodos do tipo createX(), como o <a href="#/p5/createVideo">createVideo()</a> ou o <a href="#/p5/createDiv">createDiv()</a>. Diferentemente do contexto principal dos gráficos, os pixels em gráficos adicionais criados com <a href="#/p5/createGraphics">createGraphics()</a> podem ser inteiramente ou parcialmente transparentes. Esta função torna todos os pixels 100% transparentes.
colorMode__description__0 = <a href="#/p5/colorMode">colorMode()</a> muda a forma com que o p5.js interpreta os dados de cor. Por padrão, os parâmetros para <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/background">background()</a>, e <a href="#/p5/color">color()</a> são definidos por valores entre 0 e 255 utilizando o formato RGB. Isto é equivalente a configurar como colorMode(RGB, 255). Utilizar colorMode(HSB) permite que você use o sistema HSB. Por padrão, isso é (HSB, 360, 100, 100, 1). Você também pode usar HSL.
colorMode__description__1 = Observação: as cores dos objetos já existentes lembram o modo de cor em que foram criados, logo, você pode mudá-lo sem afetar a aparência deles.
colorMode__params__mode = Constante: RGB, HSB ou HSL, correspondendo a Vermelho/Verde/Azul ou Matiz/Saturação/Brilho
colorMode__params__max = Número (opcional): intervalo para todos os valores, isto é, o valor máximo para cada parâmetro
colorMode__params__max1 = Número: intervalo de vermelho ou de matiz (dependendo do formato de cor sendo utilizado)
colorMode__params__max2 = Número: intervalo de verde ou de saturação (dependendo do formato de cor sendo utilizado)
colorMode__params__max3 = Número: intervalo de azul ou de brilho (dependendo do formato de cor sendo utilizado)
colorMode__params__maxA = Número (opcional): intervalo de alpha (transparência)
fill__description__0 = Configura a cor usada no preenchimento das formas. Por exemplo, se você configurar fill(204, 102, 0), todas as formas criadas depois desse comando serão preenchidas com a cor laranja. Essa cor é especificada em RGB ou HSB, dependendo do <a href="#/p5/colorMode">colorMode()</a> atual. (O padrão é RGB, onde cada valor vai de 0 a 255). O alpha também vai de 0 a 255.
fill__description__1 = Também é possível passar à função um único argumento do tipo string. Assim, ele será interpretado como qualquer cor web nomeável, cores hex (#), rgb() ou rgba() (ver exemplos). Nesse caso, um valor para alpha não será possível pois a função não suporta um argumento do tipo número após uma string. Para cores com transparência, use o padrão RGBA.
fill__description__2 = Um objeto <a href="#/p5.Color">Color</a> também pode ser utilizado para definir a cor do preenchimento.
fill__params__v1 = Número: o valor de vermelho ou de matiz (dependendo do formato de cor sendo utilizado)
fill__params__v2 = Número: o valor de verde ou de saturação (dependendo do formato de cor sendo utilizado)
fill__params__v3 = Número: o valor de azul ou de brilho (dependendo do formato de cor sendo utilizado)
fill__params__alpha = Número (opcional): valor de alpha (opacidade) do preenchimento
fill__params__value = String: string de cor — os formatos possíveis são: rgb() ou rgba() com números inteiros (0-255) ou porcentagens, hex de 3 ou de 6 dígitos, ou nomes de cores
fill__params__gray = Número: um valor de cinza
fill__params__values = Número[]: uma array contendo vermelho, verde, azul e alpha
fill__params__color = p5.Color: a cor do preenchimento
noFill__description__0 = Desabilita o preenchimento das formas que sejam criadas depois deste comando. Se <a href="#/p5/noStroke">noStroke()</a> e <a href="#/p5/noFill">noFill()</a> forem chamados, nada será criado na tela.
noStroke__description__0 = Desabilita o contorno das formas que sejam criadas depois deste comando. Se <a href="#/p5/noStroke">noStroke()</a> e <a href="#/p5/noFill">noFill()</a> forem chamados, nada será criado na tela.
stroke__description__0 = Define a cor usada para as linhas de contorno e bordas das formas. Essa cor é especificada em RGB ou HSB, dependendo do <a href="#/p5/colorMode">colorMode()</a> atual — o padrão é RGB, onde cada valor vai de 0 a 255. O alpha também vai de 0 a 255.
stroke__description__1 = Também é possível passar à função um único argumento do tipo string. Assim, ele será interpretado como qualquer cor web nomeável, cores hex (#), rgb() ou rgba() (ver exemplos). Nesse caso, um valor para alpha não será possível pois a função não suporta um argumento do tipo número após uma string. Para cores com transparência, use o padrão RGBA.
stroke__description__2 = Um objeto <a href="#/p5.Color">Color</a> também pode ser utilizado para definir a cor do contorno.
stroke__params__v1 = Número: o valor de vermelho ou de matiz (dependendo do formato de cor sendo utilizado)
stroke__params__v2 = Número: o valor de verde ou de saturação (dependendo do formato de cor sendo utilizado)
stroke__params__v3 = Número: o valor de azul ou de brilho (dependendo do formato de cor sendo utilizado)
stroke__params__alpha = Número (opcional): valor de alpha (opacidade) do contorno
stroke__params__value = String: string de cor — os formatos possíveis são: rgb() ou rgba() com números inteiros (0-255) ou porcentagens, hex de 3 ou de 6 dígitos, ou nomes de cores
stroke__params__gray = Número: um valor de cinza
stroke__params__values = Número[]: uma array contendo vermelho, verde, azul e alpha
stroke__params__color = p5.Color: a cor do contorno
erase__description__0 = Qualquer desenho criado depois do <a href="#/p5/erase">erase()</a> será subtraído (apagado) da canvas. Áreas apagadas mostrarão a página web abaixo da canvas. Essa subtração pode ser cancelada com <a href="#/p5/noErase">noErase()</a>.
erase__description__1 = Desenhos feitos com <a href="#/p5/image">image()</a> e <a href="#/p5/background"> background()</a> entre <a href="#/p5/erase">erase()</a> e <a href="#/p5/noErase">noErase()</a> não apagará a canvas, e funcionará normalmente.
erase__params__strengthFill = Número (opcional): Um número (0-255) que define a opacidade do apagamento do preenchimento da forma. O valor padrão quando nenhum outro valor for fornecido é de 255, resultando em transparência total.
erase__params__strengthStroke = Número (opcional): Um número (0-255) que define a opacidade do apagamento do contorno da forma. O valor padrão quando nenhum outro valor for fornecido é de 255, resultando em transparência total.
noErase__description__0 = Determina o fim do apagamento iniciado com <a href="#/p5/erase">erase()</a>. O <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, e <a href="#/p5/blendMode">blendMode()</a> retornarão ao que eram antes de chamar o <a href="#/p5/erase">erase()</a>.
arc__description__0 = Desenha um arco na tela. Se for chamado apenas com x, y, w, h, start e stop, o arco será desenhado e preenchido como um segmento aberto. Se um parâmetro de modo for fornecido, o arco será preenchido como um semi-círculo aberto (OPEN),um semi-círculo fechado (CHORD), ou como uma geometria fechada (PIE). A origem pode ser definida com a função <a href="#/p5/ellipseMode">ellipseMode()</a>.
arc__description__1 = O arco é desenhado sempre em sentido horário do ponto inicial ao final na elipse. Adicionar ou subtrair TWO_PI para qualquer um dos ângulos não muda onde eles caem. Se o início e o final caem no mesmo ponto uma elipse completa será desenhada. Leve em consideração que o eixo y aumenta indo para baixo, logo, os ângulos são medidos em sentido horário da direção x positiva ("3 horas").
arc__params__x = Number: coordenada x da elipse do arco
arc__params__y = Number: coordenada y da elipse do arco
arc__params__w = Number: largura da elipse do arco por padrão
arc__params__h = Number: altura da elipse do arco por padrão
arc__params__start = Number: ângulo para iniciar o arco, especificado em radianos
arc__params__stop = Number: ângulo para terminar o arco, especificado em radianos
arc__params__mode = Constant: (Optional) parâmetro opcional para determinar como desenhar o arco, CHORD, PIE ou OPEN
arc__params__detail = Integer: (Optional) parâmetro opcional apenas para WebGL. Serve para especificar o número de vertices que compõem o perímetro do arco. O valor padrão é 25. O detalhe máximo é de 50.
ellipse__description__0 = Desenha uma elipse na tela. Por padrão, os primeiros dois parâmetros configuram a localização do centro da elipse, o terceiro e o quarto parâmetros definem a altura e a largura da geometria. Se nenhuma altura for definida, o padrão é utilizar o mesmo valor da largura. Se o valor for negativo, o valor absoluto será utilizado.
ellipse__description__1 = Uma elipse que possui a altura igual à largura é um círculo. A origem pode ser definida pela função <a href="#/p5/ellipseMode">ellipseMode()</a>.
ellipse__params__x = Number: coordenada x do centro da elipse.
ellipse__params__y = Number: coordenada y do centro da elipse.
ellipse__params__w = Number: largura da elipse.
ellipse__params__h = Number: (Optional) altura da elipse.
ellipse__params__detail = Integer: (Optional) parâmetro opcional apenas para WebGL. Serve para especificar o número de vertices que compõem o perímetro da elipse. O valor padrão é 25. O detalhe máximo é de 50.
circle__description__0 = Desenha um círculo na tela. O círculo é uma geometria simples e fechada. Seu ponto de referência é o centro. Essa função é um caso especial da ellipse(), onde a largura e a altura da elipse são iguais. A altura e a largura da elipse correspondem ao diâmetro do círculo. Por padrão, os 2 primeiros parâmetros configuram a localização do centro do círculo, o terceiro define o diâmetro.
circle__params__x = Number: coordenada x do centro do círculo.
circle__params__y = Number: coordenada y do centro do círculo.
circle__params__d = Number: diameter of the circle.
line__description__0 = Desenha uma linha (um caminho direto entre dois pontos) na tela. Se criada com apenas 4 parâmetros, desenhará uma linha em 2D com a largura padrão de 1 pixel. Essa largura pode ser modificada usando a função <a href="#/p5/strokeWeight"> strokeWeight()</a>. Uma linha não pode ser preenchida, logo a função <a href="#/p5/fill">fill()</a> não afetará a cor da linha. Para definir a cor de uma linha use a função <a href="#/p5/stroke">stroke()</a>.
line__params__x1 = Number: a coordenada x do primeiro ponto
line__params__y1 = Number: a coordenada y do primeiro ponto
line__params__x2 = Number: a coordenada x do segundo ponto
line__params__y2 = Number: a coordenada y do segundo ponto
line__params__z1 = Number: a coordenada z do primeiro ponto
line__params__z2 = Number: a coordenada z do segundo ponto
point__description__0 = Desenha um ponto, uma coordenada no espaço com a dimensão de um pixel. O primeiro parâmetro é o valor da horizontal, o segundo é da vertical. A cor do ponto é definida pela função <a href="#/p5/stroke">stroke()</a>. O tamanho do ponto pode ser definido pela função <a href="#/p5/strokeWeight">strokeWeight()</a>.
point__params__x = Number: a coordenada x
point__params__y = Number: a coordenada y
point__params__z = Number: (Optional) a coordenada z (para WebGL )
point__params__coordinate_vector = p5.Vector: o vetor da coordenada
quad__description__0 = Desenha um quadrilátero na canvas. Similar ao retângulo mas os ângulos não são necessariamente 90 graus. O primeiro par de parâmetros (x1,y1) define o primeiro vértice, os pares subsequentes vão em sentido horário ou anti-horário. Argumentos no eixo z funcionam apenas quando o quad() está em WEBGL.
quad__params__x1 = Number: a coordenada x do primeiro ponto
quad__params__y1 = Number: a coordenada y do primeiro ponto
quad__params__x2 = Number: a coordenada x do segundo ponto
quad__params__y2 = Number: a coordenada y do segundo ponto
quad__params__x3 = Number: a coordenada x do terceiro ponto
quad__params__y3 = Number: a coordenada y do terceiro ponto
quad__params__x4 = Number: a coordenada x do quarto ponto
quad__params__y4 = Number: a coordenada y do quarto ponto
quad__params__detailX = Integer: (Optional) número de segmentos na direção x
quad__params__detailY = Integer: (Optional) número de segmentos na direção y
quad__params__z1 = Number: a coordenada z do primeiro ponto
quad__params__z2 = Number: a coordenada z do segundo ponto
quad__params__z3 = Number: a coordenada z do terceiro ponto
quad__params__z4 = Number: a coordenada z do quarto ponto
rect__description__0 = Desenha um retângulo na canvas. O retângulo é uma geometria de quatro lados com todos os ângulos iguais a 90 graus. Por padrão, os dois primeiros parâmetros configuram a localização do canto superior esquerdo, o terceiro define a largura e o quarto define a altura. A maneira em que esses parâmetros são interpretados pode ser modificada pela função <a href="#/p5/rectMode">rectMode()</a>.
rect__description__1 = O quinto, sexto, sétimo e oitavo parâmetros, se especificados, determinam o raio dos cantos superiores esquerdo e direito e dos inferiores esquerdo e direito, respectivamente. Um raio de canto omitido utilizará o valor anteriormente especificado na lista de parâmetros.
rect__params__x = Number: coordenada x do retângulo.
rect__params__y = Number: coordenada y do retângulo.
rect__params__w = Number: largura do retângulo.
rect__params__h = Number: (Optional) altura do retângulo.
rect__params__tl = Number: (Optional) raio do canto superior esquerdo.
rect__params__tr = Number: (Optional) raio do canto superior direito.
rect__params__br = Number: (Optional) raio do canto inferior direito.
rect__params__bl = Number: (Optional) raio do canto inferior esquerdo.
rect__params__detailX = Integer: (Optional) número de segmentos na direção x (para WebGL)
rect__params__detailY = Integer: (Optional) número de segmentos na direção y (para WebGL)
square__description__0 = Desenha um quadrado na tela. Um quadrado é uma geometria de quatro lados com todos os ângulos iguais a 90 graus e todos os lados do mesmo tamanho. Essa função é um caso especial da função rect(), onde a largura e a altura são iguais e o parâmetro "s" define o tamamho do lado. Por padrão, os primeiros dois parâmetros definem a localização do canto superior esquerdo, o terceiro define o tamanho do lado do quadrado. A maneira em que esses parâmetros são interpretados podem ser modificados pela função <a href="#/p5/rectMode">rectMode()</a> .
square__description__1 = O quarto, quinto, sexto e sétimo parâmetros, se especificados, determinam o raio dos cantos superiores esquerdo e direito e dos inferiores esquerdo e direito, respectivamente. Um raio de canto omitido utilizará o valor anteriormente especificado na lista de parâmetros.
square__params__x = Number: coordenada x do quadrado.
square__params__y = Number: coordenada y do quadrado.
square__params__s = Number: tamanho do lado do quadrado.
square__params__tl = Number: (Optional) raio do canto superior esquerdo.
square__params__tr = Number: (Optional) raio do canto superior direito.
square__params__br = Number: (Optional) raio do canto inferior direito.
square__params__bl = Number: (Optional) raio do canto inferior esquerdo.
triangle__description__0 = Desenha um triângulo na canvas. Um triângulo é um plano criado pela ligação de três pontos. Os primeiros dois argumentos especificam o primeiro ponto, os dois argumentos do meio especificam o segundo ponto e os dois últimos argumentos especificam o terceiro ponto.
triangle__params__x1 = Number: coordenada x do primeiro ponto
triangle__params__y1 = Number: coordenada y do primeiro ponto
triangle__params__x2 = Number: coordenada x do segundo ponto
triangle__params__y2 = Number: coordenada y do segundo ponto
triangle__params__x3 = Number: coordenada x do terceiro ponto
triangle__params__y3 = Number: coordenada y do terceiro ponto
ellipseMode__description__0 = Modifica a localização de onde as elipses são desenhadas através da mudança da forma em que <a href="#/p5/ellipse">ellipse()</a>, <a href="#/p5/circle">circle()</a> e <a href="#/p5/arc">arc()</a> são interpretadas.
ellipseMode__description__1 = O modo padrão é CENTER, em que os dois primeiros parâmetros são interpretados como x e y do centro da geometria, enquanto o terceiro e quarto parâmetros são sua largura e altura.
ellipseMode__description__2 = ellipseMode(RADIUS) também usa os dois primeiros parâmetros para definir o x e o y do centro da geometria, mas usa o terceiro e o quarto parâmetros para especificar a metade da largura e da altura da geometria.
ellipseMode__description__3 = ellipseMode(CORNER) interpreta os dois primeiros parâmetros como o canto superior esquerdo da geometria, enquanto o terceiro e o quarto parâmetros são sua largura e altura.
ellipseMode__description__4 = ellipseMode(CORNERS) interpreta os dois primeiros parâmetros como a localização de um canto da elipse que é utilizada como bounding box, o terceiro e o quarto parâmetros são a localização do canto oposto.
ellipseMode__description__5 = O parâmetro para este método deve ser escrito em CAPS porque eles são predefinidos como constantes e Javascript é uma linguagem que diferencia maiúsculas de minúsculas (case-sensitive).
ellipseMode__params__mode = Constant: ou CENTER, RADIUS, CORNER, ou CORNERS
noSmooth__description__0 = Mostra toda a geometria com os contornos serrilhados. Note que <a href="#/p5/smooth">smooth()</a> é ativado por padrão no modo 2D, logo, é necessário chamar <a href="#/p5/noSmooth">noSmooth()</a> para desabilitar a suavização da geometria, imagens e fontes. No modo 3D, <a href="#/p5/noSmooth">noSmooth()</a> está ativado por padrão, logo, é necessário chamar <a href="#/p5/smooth">smooth()</a> se você quiser uma geometria suavizada (antialiased) no seu contorno.
rectMode__description__0 = Modifica a localização de onde os retângulos são criados através da mudança da maneira em que os parâmetros <a href="#/p5/rect">rect()</a> são interpretados.
rectMode__description__1 = O modo padrão é CORNER, que interpretada os primeiros dois parâmetros como o canto superior esquerdo da shape, enquanto o terceiro e o quarto parâmetros são sua largura e altura.
rectMode__description__2 = rectMode(CORNERS) interpreta os dois primeiros parâmetros como a localização de um dos cantos e o segundo e terceiro parâmetros como a localização do canto diagonalmente oposto. Note que o retângulo é criado entre as coordenadas, não sendo necessário que o primeiro canto seja o superior esquerdo.
rectMode__description__3 = rectMode(CENTER) interpreta os dois primeiros parâmetros como o ponto central da shape, enquanto o terceiro e o quarto parâmetros são sua largura e altura.
rectMode__description__4 = rectMode(RADIUS) também usa os dois primeiros parâmetros como o ponto central da shape, mas usa o terceiro e quarto parâmetros para especificar metade da largura e da altura.
rectMode__description__5 = O parâmetro para este método deve ser escrito em CAPS porque eles são predefinidos como constantes e Javascript é uma linguagem que diferencia maiúsculas de minúsculas (case-sensitive).
rectMode__params__mode = Constant: ou CORNER, CORNERS, CENTER, ou RADIUS
smooth__description__0 = Desenha todas as geometrias com as boardas suavizadas (antialiased). <a href="#/p5/smooth">smooth()</a> também melhorará a qualidade de uma imagem redimensionada. Leve em consideração que <a href="#/p5/smooth">smooth()</a> está ativado por padrão no modo 2D; <a href="#/p5/noSmooth">noSmooth()</a> também pode ser utilizado para desabilitar a suavização de uma geometria, imagem ou fonte. No modo 3D <a href="#/p5/noSmooth">noSmooth()</a> está ligado por padrão, logo, é necessário usar <a href="#/p5/smooth">smooth()</a> se você quiser suavizar (antialiased) as bordas da geometria.
strokeCap__description__0 = Define o estilo de renderização das pontas das linhas. Essas pontas são ou arredondadas, quadradas ou extendidas, e são especificadas com estes parâmetros: ROUND, SQUARE e PROJECT. O padrão é ROUND.
strokeCap__description__1 = O parâmetro para este método deve ser escrito em CAPS porque eles são predefinidos como constantes e Javascript é uma linguagem que diferencia maiúsculas de minúsculas (case-sensitive).
strokeCap__params__cap = Constant: ou ROUND, SQUARE ou PROJECT
strokeJoin__description__0 = Define o estilo das conexões entre os segmentos de linha. Estas conexões são retas, chanfradas ou arredondadas, e são especificadas com estes parâmetros: MITER, BEVEL and ROUND. The default joint is MITER.
strokeJoin__description__1 = O parâmetro para este método deve ser escrito em CAPS porque eles são predefinidos como constantes e Javascript é uma linguagem que diferencia maiúsculas de minúsculas (case-sensitive).
strokeJoin__params__join = Constant: ou MITER, BEVEL ou ROUND
strokeWeight__description__0 = Define a largura do contorno utilizado para as linhas, pontos e bordas de geometrias. Todas as larguras são definidas em pixels.
strokeWeight__params__weight = Number: a largura do contorno (em pixels)
bezier__description__0 = Cria uma curva de Bezier cúbica. Estas curvas são definidas por uma série de pontos âncora e de controle. Os dois primeiros parâmetros especificam o primeiro ponto âncora e os dois últimos parâmetros definem o outro ponto âncora, que se tornam o primeiro e último pontos da cuva. Os parâmetros do meio especificam dois pontos de controle que definem a forma da curva. Os pontos de controle "puxam" a curva em direção a eles.
bezier__description__1 = As curvas Bezier foram desenvolvidas pelo engenheiro automotivo francês Pierre Bézier e são utilizadas geralmente em gráficos de computador para definir curvas suaves. Veja também <a href="#/p5/curve">curve()</a>.
bezier__params__x1 = Number: coordenada x para o primeiro ponto âncora
bezier__params__y1 = Number: coordenada y para o primeiro ponto âncora
bezier__params__x2 = Number: coordenada x para o primeiro ponto de controle
bezier__params__y2 = Number: coordenada y para o primeiro ponto de controle
bezier__params__x3 = Number: coordenada x para o segundo ponto de controle
bezier__params__y3 = Number: coordenada y para o segundo ponto de controle
bezier__params__x4 = Number: coordenada x para o segundo ponto âncora
bezier__params__y4 = Number: coordenada y para o segundo ponto âncora
bezier__params__z1 = Number: coordenada z para o primeiro ponto âncora
bezier__params__z2 = Number: coordenada z para o primeiro ponto de controle
bezier__params__z3 = Number: coordenada z para o segundo ponto de controle
bezier__params__z4 = Number: coordenada z para o segundo ponto âncora
bezierDetail__description__0 = Define a resolução em que a curva Bezier é mostrada. O valor padrão é 20.
bezierDetail__description__1 = Leve em consideração que essa função só é útil quando se estiver renderizando em WEBGL, já que a canvas padrão não usa essa informação.
bezierDetail__params__detail = Number: resolução das curvas
bezierPoint__description__0 = Dadas as coordenadas x ou y dos pontos de controle e dos pontos âncora de uma curva bezier, esse parâmetro avalia as coordenadas bezier na posição t. Os parâmetros a e d são as coordenadas x ou y do primeiro e do último pontos na curva, enquanto b e c são os pontos de controle. O último parâmetro é a posição do ponto resultante, representado por um valor entre 0 e 1. Isso pode ser feito primeiramente com as coordenadas x e em uma segunda vez com as coordenadas y para identificar a posição de uma curva bezier em t.
bezierPoint__returns = Number: o valor de Bezier na posição t
bezierPoint__params__a = Number: coordenada do primeiro ponto da curva
bezierPoint__params__b = Number: coordenada do primeiro ponto de controle
bezierPoint__params__c = Number: coordenada do segundo ponto de controle
bezierPoint__params__d = Number: coordenada do segundo ponto da curva
bezierPoint__params__t = Number: valor entre 0 e 1
bezierTangent__description__0 = Avalia a tangente ao Bezier na posição t para os pontos a, b, c, d. Os parâmetros a e d são o primeiro e último pontos na curva, b e c são os pontos de controle. O último parâmetro t varia entre 0 e 1.
bezierTangent__returns = Number: a tangente na posição t
bezierTangent__params__a = Number: coordenada do primeiro ponto da curva
bezierTangent__params__b = Number: coordenada do primeiro ponto de controle
bezierTangent__params__c = Number: coordenada do segundo ponto de controle
bezierTangent__params__d = Number: coordenada do segundo ponto da curva
bezierTangent__params__t = Number: valor entre 0 e 1
curve__description__0 = Cria uma linha curva entre dois pontos, dada pelos quatro parâmetros do meio. Os dois primeiros parâmetros são um ponto de controle, como se a curva viesse desse ponto mesmo ele não aparecendo na tela. Os dois últimos parâmetros similarmente descrevem o outro ponto de controle.
curve__params__x1 = Number: coordenada x do ponto de controle inicial
curve__params__y1 = Number: coordenada y do ponto de controle inicial
curve__params__x2 = Number: coordenada x do primeiro ponto
curve__params__y2 = Number: coordenada y do primeiro ponto
curve__params__x3 = Number: coordenada x do segundo ponto
curve__params__y3 = Number: coordenada y do segundo ponto
curve__params__x4 = Number: coordenada x do ponto de controle final
curve__params__y4 = Number: coordenada y do ponto de controle final
curve__params__z1 = Number: coordenada z do ponto de controle inicial
curve__params__z2 = Number: coordenada z do primeiro ponto
curve__params__z3 = Number: coordenada z do segundo ponto
curve__params__z4 = Number: coordenada z do ponto de controle final
curveDetail__description__0 = Define a resolução em que a curva será mostrada. O valor padrão é 20, enquanto o valor mínimo é 3.
curveDetail__description__1 = Esta função só é útil quando estiver usando o WEBGL renderer, já que o renderer padrão não usa essa informação.
curveDetail__params__resolution = Number: resolução das curvas
curveTightness__description__0 = Modifica a qualidade das formas criadas com <a href="#/p5/curve">curve()</a> e <a href="#/p5/curveVertex">curveVertex()</a>. O parâmetro tightness determina como a curva se encaixa nos pontos de vértice. O valor padrão é 0.0 (esse valor define as curvas como splines Catmull-Rom) e o valor 1.0 conecta todos os pontos com linhas retas. Valores no intervalo entre -5.0 e 5.0 vão deformar as curvas mas ainda deixaram elas reconhecíveis, ao aumentar a magnitude dos valores eles continuarão a deformar.
curveTightness__params__amount = Number: quantidade de deformação dos vértices originais
curvePoint__description__0 = Avalia a curva na posição t para os pontos a, b, c, d. O parâmetro t varia entre 0 e 1, a e d são os pontos de controle da curva, b e c são os pontos de início e de final da curva. Isso pode ser feito primeiramente com as coordenadas x e em uma segunda vez com as coordenadas y para identificar a posição de uma curva bezier em t.
curvePoint__returns = Number: valor bezier na posição t
curvePoint__params__a = Number: coordenada do primeiro ponto de controle da curva
curvePoint__params__b = Number: coordenada do primeiro ponto
curvePoint__params__c = Number: coordenada do segundo ponto
curvePoint__params__d = Number: coordenada do segundo ponto de controle da curva
curvePoint__params__t = Number: valor entre 0 e 1
curveTangent__description__0 = Avalia a curva na posição t para os pontos a, b, c, d. O parâmetro t varia entre 0 e 1, a e d são os pontos da curva, b e c são os pontos de controle.
curveTangent__returns = Number: a tangente na posição t
curveTangent__params__a = Number: coordenada do primeiro ponto de controle
curveTangent__params__b = Number: coordenada do primeiro ponto na curva
curveTangent__params__c = Number: coordenada do segundo ponto na curva
curveTangent__params__d = Number: coordenada do segundo ponto de controle
curveTangent__params__t = Number: valor entre 0 e 1
beginContour__description__0 = Use as funções <a href="#/p5/beginContour">beginContour()</a> e <a href="#/p5/endContour">endContour()</a> para criar formas negativas dentro de outras formas, como o a do centro da letra 'O'. <a href="#/p5/beginContour">beginContour()</a> inicia a gravação de vértices para a forma e <a href="#/p5/endContour">endContour()</a> termina a gravação. O vértice que define a forma negativa deve "girar" na direção oposta da forma exterior. Primeiro desenhar os vértices para o exterior no sentido horário, e então, para as formas internas, desenhar os vértices no sentido anti-horário.
beginContour__description__1 = Estas funções só podem ser utilizadas com o par <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> e transformações como <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, e <a href="#/p5/scale">scale()</a> não funciona com o par <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a>. Também não é possível usar outras formas, como a <a href="#/p5/ellipse">ellipse()</a> ou <a href="#/p5/rect">rect()</a>.
beginShape__description__0 = Usando as funções <a href="#/p5/beginShape">beginShape()</a> e <a href="#/p5/endShape">endShape()</a> permitem criar formas mais complexas. <a href="#/p5/beginShape">beginShape()</a> inicia a gravação de vértices para a forma e <a href="#/p5/endShape">endShape()</a> termina a gravação. O valor do tipo de parâmetro define que tipos de formas criar dos vértices providenciados. Se o modo não for especificado, a forma pode ser qualquer polígono irregular.
beginShape__description__1 = Os parâmetros disponíveis para <a href="#/p5/beginShape">beginShape()</a> são POINTS, LINES, TRIANGLES, TRIANGLE_FAN, TRIANGLE_STRIP, QUADS, QUAD_STRIP, and TESS (apenas em WebGL). Após chamar a função <a href="#/p5/beginShape">beginShape()</a>, uma série de comandos <a href="#/p5/vertex">vertex()</a> devem ser providenciados. Para parar o desenho da forma, chame <a href="#/p5/endShape">endShape()</a>. Cada forma será delineada com a cor de contorno vigente e preenchida com a cor de preenchimento vigente.
beginShape__description__2 = Transformações como <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, e <a href="#/p5/scale">scale()</a> não funcionam com <a href="#/p5/beginShape">beginShape()</a>. Também não é possível usar outras formas, como <a href="#/p5/ellipse">ellipse()</a> ou <a href="#/p5/rect">rect()</a> dentro de <a href="#/p5/beginShape">beginShape()</a>.
beginShape__params__kind = Constante: (Opcional) either POINTS, LINES, TRIANGLES, TRIANGLE_FAN  TRIANGLE_STRIP, QUADS, QUAD_STRIP ou TESS
bezierVertex__description__0 = Especifica as coordenadas dos vértices para as curvas Bezier. Cada chamada do bezierVertex() define a posição de dois pontos de controle e um ponto âncora de uma curva Bezier, adicionando um novo segmento a uma linha ou forma. Para o modo WebGL, bezierVertex() pode ser usado tanto em 2D quando em 3D. O modo 2D espera 6 parâmetros, , enquanto o modo 3D espera 9 parâmetros (incluindo as coordenadas do eixo z).
bezierVertex__description__1 = Na primeira vez que bezierVertex() for usada com <a href="#/p5/beginShape">beginShape()</a>, ela deve ser precedida com um <a href="#/p5/vertex">vertex()</a> para definir o primeiro ponto âncora. Essa função pode ser usada entre <a href="#/p5/beginShape">beginShape()</a> e <a href="#/p5/endShape">endShape()</a> mas só quando não houver os parâmetros MODE ou POINTS especificados para <a href="#/p5/beginShape">beginShape()</a>.
bezierVertex__params__x2 = Number: coordenada x para o primeiro ponto de controle
bezierVertex__params__y2 = Number: coordenada y para o primeiro ponto de controle
bezierVertex__params__x3 = Number: coordenada x para o segundo ponto de controle
bezierVertex__params__y3 = Number: coordenada y para o segundo ponto de controle
bezierVertex__params__x4 = Number: coordenada x para o ponto âncora
bezierVertex__params__y4 = Number: coordenada y para o ponto âncora
bezierVertex__params__z2 = Number: coordenada z para o primeiro ponto de controle (para WebGL)
bezierVertex__params__z3 = Number: coordenada z para o segundo ponto de controle (para WebGL)
bezierVertex__params__z4 = Number: coordenada z para o ponto âncora (para WebGL)
curveVertex__description__0 = Especifica as coordenadas do vértices para as curvas. This function may only be used between <a href="#/p5/beginShape">beginShape()</a> and <a href="#/p5/endShape">endShape()</a> and only when there is no MODE parameter specified to <a href="#/p5/beginShape">beginShape()</a>. For WebGL mode curveVertex() can be used in 2D as well as 3D mode. 2D mode expects 2 parameters, while 3D mode expects 3 parameters.
curveVertex__params__x = Number: coordenada x do vértice
curveVertex__params__y = Number: coordenada y do vértice
curveVertex__params__z = Number: (Optional) coordenada z do vértice (for WebGL mode)
endContour__description__0 = Use as funções <a href="#/p5/beginContour">beginContour()</a> e <a href="#/p5/endContour">endContour()</a> para criar formas negativas dentro de outras formas, como o a do centro da letra 'O'. <a href="#/p5/beginContour">beginContour()</a> inicia a gravação de vértices para a forma e <a href="#/p5/endContour">endContour()</a> termina a gravação. O vértice que define a forma negativa deve "girar" na direção oposta da forma exterior. Primeiro desenhar os vértices para o exterior no sentido horário, e então, para as formas internas, desenhar os vértices no sentido anti-horário.
endContour__description__1 = Estas funções só podem ser utilizadas com o par <a href="#/p5/beginShape">beginShape()</a>/<a href="#/p5/endShape">endShape()</a> e transformações como <a href="#/p5/translate">translate()</a>, <a href="#/p5/rotate">rotate()</a>, e <a href="#/p5/scale">scale()</a> não funciona com o par <a href="#/p5/beginContour">beginContour()</a>/<a href="#/p5/endContour">endContour()</a>. Também não é possível usar outras formas, como a <a href="#/p5/ellipse">ellipse()</a> ou <a href="#/p5/rect">rect()</a>.
endShape__description__0 = A função <code>endShape()</code> é a complementar de <code><a href="#/p5/beginShape">beginShape()</a></code> e só pode ser chamada após <code><a href="#/p5/beginShape">beginShape()</a></code>. Quando <code>endShape()</code> é chamado, todos os dados de imagem definidos desde a chamada anterior de <code><a href="#/p5/beginShape">beginShape()</ a></code> são escritos no buffer de imagem. A constante <code>CLOSE</code> como o valor do parâmetro <code>MODE</code> fecha a forma (conecta o início e o fim).
endShape__params__mode = Constante (opcional): use <code>CLOSE</code> para ligar os pontos inicial e final da forma automaticamente.
quadraticVertex__params__x3 = Number: x-coordinate para o ponto âncora
quadraticVertex__params__y3 = Number: y-coordinate para o ponto âncora
quadraticVertex__params__z3 = Number: z-coordinate para o ponto âncora (for WebGL mode)
vertex__params__x = Number: x-coordinate do vértice
vertex__params__y = Number: y-coordinate do vértice
vertex__params__z = Number: z-coordinate do vértice
HALF_PI__description__0 = HALF_PI é uma constante matemática com o valor 1.57079632679489661923. É a metade da razão entre a circunferência de um círculo e seu diâmetro. É útil em combinação com as funções trigonométricas <a href="#/p5/sin">sin()</a> e <a href="#/p5/cos">cos()</a>.
PI__description__0 = PI é uma constante matemática com o valor 3.14159265358979323846. É a razão entre a circunferência de um círculo e seu diâmetro. É útil em combinação com as funções trigonométricas <a href="#/p5/sin">sin()</a> e <a href="#/p5/cos">cos()</a>.
QUARTER_PI__description__0 = QUARTER_PI é uma constante matemática com o valor 0.7853982. É um quarto da razão entre a circunferência de um círculo e seu diâmetro. É útil em combinação com as funções trigonométricas <a href="#/p5/sin">sin()</a> e <a href="#/p5/cos">cos()</a>.
TAU__description__0 = TAU é uma abreviatura para TWO_PI, que é uma constante matemática com o valor 6.28318530717958647693. Equivale duas vezes a razão entre a circunferência de um círculo e seu diâmetro. É útil em combinação com as funções trigonométricas <a href="#/p5/sin">sin()</a> e <a href="#/p5/cos">cos()</a>.
TWO_PI__description__0 = TWO_PI é uma constante matemática com o valor 6.28318530717958647693. Equivale duas vezes a razão entre a circunferência de um círculo e seu diâmetro. É útil em combinação com as funções trigonométricas <a href="#/p5/sin">sin()</a> e <a href="#/p5/cos">cos()</a>.
DEGREES__description__0 = Constante a ser usada com a função <a href="#/p5/angleMode">angleMode()</a> , para definir o modo em que p5.js interpreta e calcula ângulos (GRAUS ou RADIANOS).
RADIANS__description__0 = Constante a ser usada com a função <a href="#/p5/angleMode">angleMode()</a> , para definir o modo em que p5.js interpreta e calcula ângulos (GRAUS ou RADIANOS).
print__description__0 = A função <a href="#/p5/print">print()</a> escreve uma mensagem no console do browser. Essa função é útil para que possamos observar os dados produzidos enquanto o programa está em execução — por exemplo, para verificar o valor de uma variável em um ponto específico do código. A função cria uma nova linha de texto a cada vez que é chamada. O argumento da função podem ser quaisquer valores válidos da linguagem, como cadeias de caracteres (strings / texto), números, variáveis, booleanos, objetos, arrays, expressões, etc.
print__description__1 = Para imprimir valores de tipos diferentes, podemos separá-los por vírgulas (,). Para juntar uma ou mais strings à variável que queremos verificar, como no exemplo acima, é possível utilizar o operador de adição (+) — que neste caso transforma o número em String. Por exemplo, podemos escrever <code>print("O valor de x é " + x + ", e de y é " + y)</code>.
print__params__contents = Qualquer: qualquer sequência de números, Strings, objetos, booleanos ou array para escrever no console
frameCount__description__0 = A variável global <a href="#/p5/frameCount">frameCount</a>, embutida na biblioteca p5.js, contém o número de quadros (frames) que foram mostrados desde que o programa iniciou. Dentro de <a href="#/p5/setup">setup()</a> o valor é 0, depois da primeira iteração de <a href="#/p5/draw">draw()</a> é 1, etc.
deltaTime__description__0 = A variável global <a href="#/p5/deltaTime">deltaTime</a>, embutida na biblioteca p5.js, contém a diferença de tempo entre o início do quadro (frame) anterior e o início do quadro atual em milissegundos.
deltaTime__description__1 = Essa variável é útil para criar animações que dependem do tempo, ou cálculos de física que devam permanecem constantes mesmo que haja variação na taxa de quadros.
focused__description__0 = Confirma que a janela do sketch está em foco, ou seja, que ela irá aceitar interação de mouse ou teclado. Essa variável retorna <code>true</code> (verdadeiro) caso a janela esteja em foco, e <code>false</code> (falso) caso não esteja.
cursor__description__0 = Configura o cursor como uma imagem ou símbolo específico, ou o torna visível caso não esteja. Se você estiver buscando utilizar uma imagem como cursor, o tamanho recomendado é 16x16 ou 32x32 pixels. Os valores para os parâmetros x e y devem ser menores do que o tamanho da imagem.
cursor__params__type = String|Constante: embutidas: ARROW, CROSS, HAND, MOVE, TEXT ou WAIT; propriedades nativas do CSS: 'grab', 'progress', 'cell', etc.; externas: endereço da imagem do cursor (extensões permitidas: .cur, .gif, .jpg, .jpeg, .png). Para mais informações em cursores nativos do CSS e URLs visite <a href="https://developer.mozilla.org/en-US/docs/Web/CSS/cursor">https://developer.mozilla.org/en-US/docs/Web/CSS/cursor</a>.
cursor__params__x = Número (opcional): o ponto ativo do cursor — o ponto em que ele clica — em relação ao eixo horizontal (precisa ser menor do que 32, e menor do que a imagem)
cursor__params__y = Número (opcional): o ponto ativo do cursor — o ponto em que ele clica — em relação ao eixo vertical (precisa ser menor do que 32, e menor do que a imagem)
frameRate__description__0 = Especifica a taxa de quadros, ou seja, o número de quadros (frames) a serem mostrados a cada segundo. Por exemplo, chamar a função <code>frameRate(30)</code> fará com que a canvas tente atualizar-se 30 vezes por segundo. Caso o processador não seja rápido o suficiente para manter a frequência especificada, a taxa de quadros não será atingida. É recomendado configurar a taxa de quadro dentro de <a href="#/p5/setup">setup()</a>. A taxa de quadro padrão é baseada na taxa da tela (também conhecida como taxa de atualização), que na maioria dos computadores corresponde a 60 quadros por segundo (fps). Uma taxa de quadros igual ou superior a 24 quadros por segundo (valor típico de filmes) é suficiente para animações fluidas. Isto é o mesmo que <code>setFrameRate(valor)</code>
frameRate__description__1 = Chamar <a href="#/p5/frameRate">frameRate()</a> sem nenhum argumento, ou com argumentos que não sejam números positivos, retorna a taxa de quadros atual. A função draw() precisa rodar ao menos uma vez antes de retornar um valor. Isto é o mesmo que <a href="#/p5/getFrameRate">getFrameRate()</a>.
frameRate__params__fps = Número: número de quadros a serem mostrados em um segundo
noCursor__description__0 = Esconde o cursor.
displayWidth__description__0 = Variável global embutida na biblioteca p5.js que armazena a largura da tela de acordo com a densidade de pixels (<a href="#/p5/pixelDensity">pixelDensity</a>) padrão. Isto é utilizado para executar o programa em tela cheia independente do tamanho da tela. Para obter a largura real da tela, multiplique este número pela <a href="#/p5/pixelDensity">pixelDensity</a>.
displayHeight__description__0 = Variável global embutida na biblioteca p5.js que armazena a altura da tela de acordo com a densidade de pixels (<a href="#/p5/pixelDensity">pixelDensity</a>) padrão. Isto é utilizado para executar o programa em tela cheia independente do tamanho da tela. Para obter a altura real da tela, multiplique este número pela <a href="#/p5/pixelDensity">pixelDensity</a>.
windowWidth__description__0 = Variável global embutida na biblioteca p5.js que armazena a largura interna da janela. É o mesmo que a propriedade window.innerWidth.
windowHeight__description__0 = Variável global embutida na biblioteca p5.js que armazena a altura interna da janela. É o mesmo que a propriedade window.innerHeight.
windowResized__description__0 = A função <a href="#/p5/windowResized">windowResized()</a> é chamada a cada vez que a janela do browser muda de tamanho. É um bom lugar para redimensionar a canvas ou fazer quaisquer outros ajustes para acomodar o novo tamanho da janela.
windowResized__params__event = Objeto (opcional): argumentos do evento de callback.
width__description__0 = Variável global embutida na biblioteca p5.js que armazena a largura da canvas. Este valor é definido pelo primeiro parâmetro da função <a href="#/p5/createCanvas">createCanvas()</a>. Por exemplo, a chamada de função <code>createCanvas(320, 240)</code> atribui à variável <code>width</code> o valor 320. Se a função <a href="#/p5/createCanvas">createCanvas()</a> não for chamada no programa, o valor padrão para a largura é 100.
height__description__0 = Variável global embutida na biblioteca p5.js que armazena a altura da canvas. Este valor é definido pelo segundo parâmetro da função <a href="#/p5/createCanvas">createCanvas()</a>. Por exemplo, a chamada de função <code>createCanvas(320, 240)</code> atribui à variável <code>height</code> o valor 240. Se a função <a href="#/p5/createCanvas">createCanvas()</a> não for chamada no programa, o valor padrão para a altura é 100.
fullscreen__description__0 = Se um argumento for passado, configura o sketch para telaa cheia baseado no valor deste argument. Caso contrário, retorna se o sketch está em tela cheia ou não. Note que, dado as restrições dos browsers, só é possível chamar essa função a partir de interação direta como, por exemplo, o clique do mouse.
fullscreen__returns = Booleano: se o sketch está em tela cheia (true) ou não (false)
fullscreen__params__val = Boolean (opcional): se o sketch deve rodar em tela cheia (true) ou não (false)
pixelDensity__description__0 = Define a escala dos pixels para telas de alta densidade. Por padrão, a densidade de pixels é igual a densidade da tela — chame <code>pixelDensity(1)</code> para que isso não aconteça. Chamar <a href="#/p5/pixelDensity">pixelDensity()</a> sem argumentos retorna a densidade de pixels atual do sketch.
pixelDensity__params__val = Número: se ou quanto o sketch deve ser redimensionado
displayDensity__description__0 = Retorna a densidade de pixels da tela em que o sketch está sendo executado.
displayDensity__returns = Número: densidade de pixels da tela
getURL__description__0 = Retorna a URL atual.
getURL__returns = String: URL
getURLPath__description__0 = Retorna o caminho da URL atual como uma array.
getURLPath__returns = String[]: os componentes do caminho da URL
getURLParams__description__0 = Retorna os parâmetros da URL atual como um objeto.
getURLParams__returns = Objeto: parâmetros da URL
preload__description__0 = A função <a href="#/p5/preload">preload()</a> é usada para lidar com o carregamento síncrono de arquivos externos de forma bloqueadora (blocking) e deve ser chamada diretamente antes de <a href="#/p5/setup">setup()</a>. Quando há um bloco de <a href="#/p5/preload">preload()</a> o restante do código esperará até que tudo nele seja concluído antes de ser executado. Observe que apenas chamadas de carregamento (<a href="#/p5/loadImage">loadImage</a>, <a href="#/p5/loadJSON">loadJSON</a>, <a href="#/p5/loadFont">loadFont</a>, <a href="#/p5/loadStrings">loadStrings</a> , etc.) devem estar dentro deste bloco, todas as outras inicializações devem acontecer no <a href="#/p5/setup">setup()</a>. Os métodos de carregamento quando chamados fora de <a href="#/p5/preload">preload()</a> ocorrem de forma assíncrona não bloqueadora (non-blocking), podendo haver nesse caso um parâmetro de <a href="https://github.com/processing/p5.js/wiki/p5.js-overview#callbacks">callback</a>. Mais informações sobre chamadas assíncronas e carregamento de arquivos <a href="https://github.com/processing/p5.js/wiki/p5.js-overview#asynchronous-calls-and-file-loading">aqui</a>.
preload__description__1 = Por definição o texto "loading..." será exibido durante o carregamento dos arquivos. Para fazer sua própria página de carregamento, inclua um elemento HTML com <code>id="p5_loading"</code> em sua página. Veja mais informações sobre como configurar sua tela de carregamento <a href="<a href="https://github.com/processing/p5.js/wiki/p5.js-overview#loading-screen">aqui</a>.
setup__description__0 = A função <a href="#/p5/setup">setup()</a> é chamada quando o programa começa. É utilizada para definir propriedades do ambiente como o tamanho da canvas e cor do a cor de fundo da canvas. Também pode conter chamadas de carregamento de mídias (<a href="#/p5/loadImage">loadImage</a>, <a href="#/p5/loadJSON">loadJSON</a>, <a href="#/p5/loadFont">loadFont</a>, <a href="#/p5/loadStrings">loadStrings</a>, etc.). Só pode haver um bloco de <a href="#/p5/setup">setup()</a> por programa, não podendo ser chamado novamente após a execução inicial.
setup__description__1 = Nota: váriaveis declaradas dentro de <a href="#/p5/setup">setup()</a> não são acessíveis em outras funções, incluindo <a href="#/p5/draw">draw()</a>.
draw__description__0 = A função <a href="#/p5/draw">draw()</a>, geralmente chamada logo após o <a href="#/p5/setup">setup()</a>, executa continuamente as linhas de código contidas dentro do bloco até que o programa seja interrompido. Atenção, <a href="#/p5/draw">draw()</a> é chamada automaticamente e não deve ser chamada explicitamente.
draw__description__1 = Esta função pode ser controlada por <a href="#/p5/noLoop">noLoop()</a>, <a href="#/p5/redraw">redraw()</a> and <a href="#/p5/loop">loop()</a>. Para interromper a execução do código dentro de <a href="#/p5/draw">draw()</a> deve ser utilizada a função <a href="#/p5/noLoop">noLoop()</a>. Importante observar que se a função <a href="#/p5/noLoop">noLoop()</a> for chamada dentro do bloco <a href="#/p5/setup">setup()</a>, a função <a href="#/p5/draw">draw()</a> será executada uma vez antes de ser interrompida. Com a execução de parada <a href="#/p5/draw">draw()</a>, a função <a href="#/p5/redraw">redraw()</a> faz com que o código dentro de <a href="#/p5/draw">draw()</a> seja executado uma única vez. Já a função <a href="#/p5/loop">loop()</a> fará com que o código volte a ser executado continuamente.
draw__description__2 = A função <a href="#/p5/frameRate">frameRate()</a> especifica a taxa de quadros por segundo, alterando o numero de vezes que a função <a href="#/p5/draw">draw()</a> será executada por segundo. Por definição o valor do <a href="#/p5/frameRate">frameRate()</a> é baseada na taxa da tela (também conhecida como taxa de atualização), que na maioria dos computadores corresponde a 60 quadros por segundo (fps).
draw__description__3 = Atenção, só pode haver um bloco de <a href="#/p5/draw">draw()</a> por sketch. Nâo é obrigatório que exista o bloco <a href="#/p5/draw">draw()</a> no sketch, no entando, se você deseja que seu código seja executado continuamente ou se você deseja acionar eventos como <a href="#/p5/mousePressed">mousePressed()</a>, é recomendado usar a função <a href="#/p5/draw">draw()</a>. Por vezes poderá haver um chamada vazia de <a href="#/p5/draw">draw()</a> em seu sketch, como mostrado no exemplo acima.
draw__description__4 = É importante lembrar que o sistema de coordenadas é resetado no início de cada chamada de <a href="#/p5/draw">draw()</a>. Por isso, se alguma transformação for realizada dentro de <a href="#/p5/draw">draw()</a> (ex: <a href="#/p5/scale">scale()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/translate">translate()</a>), seus efeitos serão desfeitos na nova chamada e as transformações não serão acumuladas ao longo da execução do programa. Já os estilos aplicados (ex: <a href="#/p5/fill">fill()</a>, <a href="#/p5/stroke">stroke()</a>, etc) permanecem na nova chamada.
remove__description__0 = Remove o sketch feito com P5.js completamente. Esta função remove todos os elementos criados com P5.js, inclusive a Canvas. Também para a execução de <a href="#/p5/draw">draw()</a> e desvincula todas as propriedades e métodos vinculados ao objeto window no escopo global. A função deixa uma nova variável <code>p5</code> caso você queira criar um novo sketch com p5.js, caso contrário você pode configurar <code> p5 = null </code> para apagar a variável. Embora todas as funções, variáveis ​​e objetos criados pela biblioteca p5 sejam removidos, quaisquer outras variáveis ​​globais criadas por seu código permanecerão.
disableFriendlyErrors__description__0 = Desativa o Sistema de Erro Amigável (em inglês Friendly Errors Sistem ou FES) durante a criação do sketch. Quando você usa o arquivo p5.js não minimizado (no lugar de p5.min.js), há um sistema de erro amigável (FES) que irá avisá-lo, por exemplo, se você inserir argumentos inesperados em uma função. Este sistema de verificação de erros pode reduzir significativamente a velocidade do seu código (até ~ 10x em alguns casos), por isso desativar o FES pode melhorar o desempenho quando for preciso. Veja mais informaçãos sobre a desabilitação do FES <a href='https://github.com/processing/p5.js/wiki/Optimizing-p5.js-Code-for-Performance#disable-the-friendly-error-system-fes'> aqui</a>.
let__description__0 = Cria e nomeia uma nova variável. Uma variável é um contêiner para um valor.
let__description__1 = Variáveis que são declaradas com <a href="#/p5/let">let</a> terão escopo de bloco. Isso significa que a variável só existe dentro do <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block"> bloco</a> em que foi criada.
let__description__2 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let"> entrada MDN</a>: Declara uma variável local de escopo de bloco, opcionalmente inicializando-a com um valor.
const__description__0 = Cria e nomeia uma nova constante. Como uma variável criada com <a href="#/p5/let">let</a>, uma constante que é criada com <a href="#/p5/const">const</a> é um contêiner para um valor, no entanto, as constantes não podem ser reatribuídas depois de declaradas. Embora seja digno de nota que, para tipos de dados não primitivos, como objetos e arrays, seus elementos ainda podem ser mutáveis. Portanto, se uma variável é atribuída a um array, você ainda pode adicionar ou remover elementos do array, mas não pode reatribuir outro array a ele. Ainda, ao contrário de <code>let</code>, você não pode declarar variáveis sem valor usando const.
const__description__1 = Constantes têm escopo de bloco. Isso significa que a constante só existe dentro do <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/block"> bloco</a> em que é criada. Uma constante não pode ser declarada novamente dentro de um escopo no qual já existe.
const__description__2 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const">entrada MDN</a>: Declara uma constante nomeada somente para leitura. As constantes têm escopo de bloco, muito parecido com as variáveis definidas usando a instrução 'let'. O valor de uma constante não pode ser alterado por meio de reatribuição e não pode ser declarado novamente.
if-else__description__0 = A declaração <a href="#/p5/if-else">if-else</a> (se/senão) ajuda a controlar o fluxo do seu código.
if-else__description__1 = Uma condição é colocada entre parênteses após 'if' (se), quando essa condição é avaliada como <a href="https://developer.mozilla.org/en-US/docs/Glossary/truthy">verdade</a>, o código entre as chaves seguintes é executado. Alternativamente, quando a condição é avalia como <a href="https://developer.mozilla.org/en-US/docs/Glossary/Falsy">falsa</a>, o código entre as chaves do bloco 'else' é executado em seu lugar. Escrever um bloco else é opcional.
if-else__description__2 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/if...else">entrada MDN</a>: A declaração 'if' executa uma instrução se uma condição especificada for verdadeira. Se a condição for falsa, outra instrução pode ser executada.
function__description__0 = Cria e nomeia uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions">função</a>. Uma <a href="#/p5/function">função</a> é um conjunto de instruções que executam uma tarefa.
function__description__1 = Opcionalmente, as funções podem ter parâmetros. <a href="https://developer.mozilla.org/en-US/docs/Glossary/Parameter">Parâmetros</a> são variáveis que têm como escopo a função, que podem receber um valor ao chamar a função. Vários parâmetros podem ser dados separados por vírgulas.
function__description__2 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/function">entrada MDN</a>: Declara uma função com os parâmetros especificados.
return__description__0 = Especifica o valor a ser retornado por uma função. Para obter mais informações, verifique <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/return">a entrada MDN para return</a>.
boolean__description__0 = Converte um número ou string em sua representação booleana. Para um número, qualquer valor diferente de zero (positivo ou negativo) é avaliado como true (verdadeiro), enquanto zero é avaliado como false (falso). Para uma string, o valor "true " é avaliado como verdadeiro, enquanto qualquer outro valor é avaliado como falso. Quando uma array de números ou valores de string é passada, então uma array de booleanos do mesmo comprimento é retornada.
boolean__returns = Booleano: representação booleana de valor
boolean__params__n = String|Booleano|Número|Array: valor para analisar
string__description__0 = Uma <a href="#/p5/string">string</a> é um dos 7 <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Primitive_values">tipos de dados primitivos</a> em Javascript. Uma string é uma série de caracteres de texto. Em Javascript, um valor de string deve estar entre aspas simples (') ou aspas duplas (").
string__description__1 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Glossary/string">entrada MDN</a>: Uma string é uma sequência de caracteres usada para representar texto.
number__description__0 = Um <a href="#/p5/number">número</a> é um dos 7 <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures#Primitive_values">tipos de dados primitivos</a> em Javascript. Um number pode ser um número inteiro ou decimal.
number__description__1 = <a href="https://developer.mozilla.org/en-US/docs/Glossary/number">A entrada MDN para um número</a>
object__description__0 = A partir de um <a href="https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Objects/Basics">objeto básico de MDN</a>:  Um <a href="#/p5/object">objeto</a> é uma coleção de dados relacionados e/ou funcionalidades (que geralmente consistem em várias variáveis e funções - que são chamadas de propriedades e métodos quando estão dentro de objetos.)
class__description__0 = Cria e nomeia uma <a href="#/p5/class">classe</a> que é um modelo para a criação de <a href="#/p5/objects">objetos</a>.
class__description__1 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/class">entrada MDN</a>: A declaração de classe cria uma nova classe com um determinado nome usando herança baseada em protótipo.
for__description__0 = <a href="#/p5/for">for</a> cria um loop que é útil para executar uma seção de código várias vezes.
for__description__1 = Um 'loop for' consiste em três expressões diferentes entre parênteses, todas opcionais. Essas expressões são usadas para controlar o número de vezes que o loop é executado. A primeira expressão é uma instrução usada para definir o estado inicial para o loop. A segunda expressão é uma condição que você gostaria de verificar antes de cada loop. Se esta expressão retornar false (falso), então sairá do loop. A terceira expressão é executada no final de cada loop. Essas expressões são separadas por ; (ponto e vírgula). No caso de uma expressão vazia, apenas um ponto e vírgula é escrito.
for__description__2 = O código dentro do corpo do loop (entre as chaves) é executado entre a avaliação da segunda e da terceira expressão.
for__description__3 = Como acontece com qualquer loop, é importante garantir que o loop possa 'sair' ou que a condição de teste acabe sendo avaliada como false (falsa). A condição de teste com um loop <a href="#/p5/for">for</a> é a segunda expressão detalhada acima. Garantir que essa expressão possa eventualmente se tornar falsa garante que seu loop não tente ser executado uma quantidade infinita de vezes, o que pode travar seu navegador.
for__description__4 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for">entrada MDN</a>: Cria um loop que executa uma instrução especificada até que a condição de teste seja avaliada como falsa. A condição é avaliada após a execução da instrução, resultando na execução da instrução especificada pelo menos uma vez.
while__description__0 = <a href="#/p5/while">while</a> (enquanto) cria um loop que é útil para executar uma seção de código várias vezes.
while__description__1 = Com um 'loop while', o código dentro do corpo do loop (entre as chaves) é executado repetidamente até que a condição de teste (dentro dos parênteses) seja avaliada como false (falsa). A condição é testada antes de executar o corpo do código com <a href="#/p5/while">while</a>, então, se a condição for inicialmente falsa, o corpo do loop, ou instrução, nunca serão executados.
while__description__2 = Como acontece com qualquer loop, é importante garantir que o loop possa 'sair' ou que a condição de teste acabe sendo avaliada como falsa. Isso evita que seu loop tente ser executado uma quantidade infinita de vezes, o que pode travar seu navegador.
while__description__3 = A partir de uma <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/while">entrada MDN</a>: A instrução while cria um loop que executa uma instrução especificada, desde que a condição de teste seja avaliada como true (verdadeira). A condição é avaliada antes de executar a instrução.
createCanvas__description__0 = Cria um elemento canvas no documento e define suas dimensões em pixels. Este método deve ser chamado apenas uma vez no início da configuração. Chamar <a href="#/p5/createCanvas">createCanvas</a> mais de uma vez em um sketch resultará em um comportamento muito imprevisível. Se você quiser mais de um canvas de desenho, pode usar o <a href="#/p5/createGraphics">createGraphics</a> (oculto por padrão, mas pode ser mostrado).
createCanvas__description__1 = Nota importante: no modo 2D (ou seja, quando <code>p5.Renderer</code> não está definido) a origem (0,0) é posicionada na parte superior esquerda da tela. No modo 3D (ou seja, quando <code>p5.Renderer</code> está definido <code>WEBGL</code>), a origem é posicionada no centro do canvas. Veja <a href="https://github.com/processing/p5.js/issues/1545">esse assunto</a> para mais informações.
createCanvas__description__2 = As variáveis de sistema largura e altura são definidas pelos parâmetros passados para esta função. Se <a href="#/p5/createCanvas">createCanvas()</a> não for usado, a janela terá um tamanho padrão de 100x100 pixels.
createCanvas__description__3 = Para obter mais maneiras de posicionar o canvas, consulte a página wiki <a href='https://github.com/processing/p5.js/wiki/Positioning-your-canvas'> posicionando o canvas</a> .
createCanvas__returns = p5.Renderer:
createCanvas__params__w = Número: largura do canvas
createCanvas__params__h = Número: altura do canvas
createCanvas__params__renderer = Constante (opcional): tanto P2D ou WEBGL
resizeCanvas__description__0 = Redimensiona o canvas de acordo com a largura e a altura fornecidas. O canvas será limpo e draw será chamada imediatamente, permitindo que o sketch seja renderizado novamente na tela redimensionada.
resizeCanvas__params__w = Número: largura do canvas
resizeCanvas__params__h = Número: altura do canvas
resizeCanvas__params__noRedraw = Booleano (opcional): não redesenha o canvas imediatamente
noCanvas__description__0 = Remove o canvas padrão para um sketch p5 que não requer um canvas
createGraphics__description__0 = Cria e retorna um novo objeto p5.Renderer. Use esta classe se precisar desenhar em um buffer gráfico nos bastidores da tela (off-screen). Os dois parâmetros definem a largura e altura em pixels.
createGraphics__returns = p5.Graphics: buffer gráfico nos bastidores da tela
createGraphics__params__w = Número: largura do buffer gráfico nos bastidores da tela
createGraphics__params__h = Número: altura do buffer gráfico nos bastidores da tela
createGraphics__params__renderer = Constante (opcional): tanto P2D ou WEBGL padrão indefinido para p2d
blendMode__description__0 = Combina os pixels na janela de exibição de acordo com o modo definido. Existe uma escolha dos seguintes modos para misturar os pixels de origem (A) com os pixels que já estão na janela de exibição (B): <ul> <li><code>BLEND</code> - interpolação linear de cores: C = A*fator + B. <b>Este é o modo de mistura padrão. </b></li> <li><code>ADD</code> - soma de A e B</li> <li><code>DARKEST</code> - apenas a cor mais escura aparece: C = min(A*fator, B).</li> <li><code>LIGHTEST</code> - apenas a cor mais clara aparece: C = max(A*fator, B).</li> <li><code>DIFFERENCE</code> - subtrai as cores da imagem subjacente.</li> <li><code>EXCLUSION</code> - similar a <code>DIFFERENCE</code>, porém, menos extremo.</li> <li><code>MULTIPLY</code> - multiplique as cores, o resultado sempre será mais escuro.</li> <li><code>SCREEN</code> - oposto a multiply, usa valores inversos das cores.</li> <li><code>REPLACE</code> - os pixels são inteiramente substituídos pelos outros e não utilizam valores alfa (transparência).</li> <li><code>REMOVE</code> - remove os pixels de B com a força alfa de A.</li> <li><code>OVERLAY</code> - mistura de <code>MULTIPLY</code> e <code>SCREEN </code>. Multiplica valores de escuridão e valores de luz. <em>(2D)</em></li> <li><code>HARD_LIGHT</code> - <code>SCREEN</code> quando maior que 50% cinza, <code>MULTIPLY</code> quando mais baixo. <em>(2D)</em></li> <li><code>SOFT_LIGHT</code> - mistura de <code>DARKEST</code> e <code>LIGHTEST</code>. Funciona como <code>OVERLAY</code>, mas não tão severo. <em>(2D)</em> </li> <li><code>DODGE</code> - clareia os tons claros e aumenta o contraste, ignora os escuros. <em>(2D)</em></li> <li><code>BURN</code> - áreas mais escuras são aplicadas, aumentando o contraste, ignora as luzes. <em>(2D)</em></li> <li><code>SUBTRACT</code> - restante de A e B <em>(3D)</em></li> </ul>
blendMode__description__1 = <em>(2D)</em> indica que este modo de mistura <b>apenas</b> funciona no renderizador 2D. <em>(3D)</em> indica que este modo de mistura <b>apenas</b> funciona no renderizador WEBGL.
blendMode__params__mode = Constante: modo de mistura para definir o canvas. tanto BLEND, DARKEST, LIGHTEST, DIFFERENCE, MULTIPLY,  EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT,  SOFT_LIGHT, DODGE, BURN, ADD, REMOVE ou SUBTRACT
drawingContext__description__0 = A API do p5.js fornece muitas funcionalidades para a criação de gráficos, mas há algumas funcionalidades nativas do HTML5 Canvas que não são expostas pelo p5. Você ainda pode chamá-lo diretamente usando a variável  <code>drawingContext</code>, como no exemplo mostrado. Isso é o equivalente a chamar <code>canvas.getContext('2d');</code> ou <code>canvas.getContext('webgl');</code>. Veja a <a href="https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D"> referência para a API nativa do canvas</a> para possíveis funções de desenho que você pode chamar.
noLoop__description__0 = Interrompe a execução contínua do código dentro do bloco <a href="#/p5/draw">draw()</a>.
noLoop__description__1 = Por padrão, o p5.js executa continuamente as linhas de código contidas dentro do bloco <a href="#/p5/draw">draw()</a>. Para interromper a execução contínua utiliza-se a função <a href="#/p5/noLoop">noLoop()</a>. Neste caso, a execução de <a href="#/p5/draw">draw()</a> pode ser recomeçada com a função <a href="#/p5/loop">loop()</a>.
noLoop__description__2 = Caso a função <a href="#/p5/noLoop">noLoop()</a> seja utilizada dentro de <a href="#/p5/setup">setup()</a>, ela deverá estar na última linha de código dentro do bloco.
noLoop__description__3 = Quando <a href="#/p5/noLoop">noLoop()</a> é usado, não é possível manipular ou acessar a tela pelas funções de manipulação de eventos (event handlers), como <a href="#/p5/mousePressed">mousePressed()</a> ou <a href="#/p5/keyPressed">keyPressed()</a>. Isso significa que quando <a href="#/p5/noLoop">noLoop()</a> é executado, nada mais pode ser desenhado e funções como <a href="#/p5/saveFrames">saveFrames()</a> or <a href="#/p5/loadPixels">loadPixels()</a> não podem ser usadas. Nestes casos, as funções de manipulação de eventos (event handlers) podem ser utilizadas para chamar <a href="#/p5/redraw">redraw()</a> ou <a href="#/p5/loop">loop()</a>, que ao executar <a href="#/p5/draw">draw()</a> poderam atualizar a tela corretamente.
loop__description__0 = Retoma a execução contínua do código dentro do bloco <a href="#/p5/draw">draw()</a>
loop__description__1 = Por padrão, o p5.js executa continuamente as linhas de código contidas dentro do bloco <a href="#/p5/draw">draw()</a>. Para interromper a execução contínua utiliza-se a função <a href="#/p5/noLoop">noLoop()</a>. Neste caso, a execução de <a href="#/p5/draw">draw()</a> pode ser recomeçada com a função <a href="#/p5/loop">loop()</a>.
loop__description__2 = Nâo é recomendado chamar <code>loop</code> dentro de <a href="#/p5/setup">setup()</a>
isLooping__description__0 = Retorna o estado atual de <a href="#/p5/loop">loop()</a>.
push__description__0 = A função <a href="#/p5/push">push()</a> salva as configurações e transformações do estilo de desenho atual, enquanto <a href="#/p5/pop">pop()</a> restaura essas configurações.
push__description__1 = As funções <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a> sempre são utilizadas juntas. Elas permitem que as configurações de estilo e transformação sejam alteradas e, posteriormente, permite que elas sejam restauradas. Quando um novo estado é iniciado com push (), ele se baseia no estilo atual e nas informações de transformação. As funções push () e pop () podem ser incorporadas para fornecer mais controle. (Veja o segundo exemplo.)
push__description__2 = <a href="#/p5/push">push()</a> armazena informações relacionadas ao estado de transformação atual e configurações de estilo controladas pelas seguintes funções: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a> e <a href="#/p5/noiseSeed">noiseSeed()</a>.
pop__description__0 = A função <a href="#/p5/push">push()</a> salva as configurações e transformações do estilo de desenho atual, enquanto <a href="#/p5/pop">pop()</a> restaura essas configurações.
pop__description__1 = As funções <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a> sempre são utilizadas juntas. Elas permitem que as configurações de estilo e transformação sejam alteradas e, posteriormente, permite que elas sejam restauradas. Quando um novo estado é iniciado com push (), ele se baseia no estilo atual e nas informações de transformação. As funções push () e pop () podem ser incorporadas para fornecer mais controle. (Veja o segundo exemplo.)
pop__description__2 = <a href="#/p5/push">push()</a> armazena informações relacionadas ao estado de transformação atual e configurações de estilo controladas pelas seguintes funções: <a href="#/p5/fill">fill()</a>, <a href="#/p5/noFill">noFill()</a>, <a href="#/p5/noStroke">noStroke()</a>, <a href="#/p5/stroke">stroke()</a>, <a href="#/p5/tint">tint()</a>, <a href="#/p5/noTint">noTint()</a>, <a href="#/p5/strokeWeight">strokeWeight()</a>, <a href="#/p5/strokeCap">strokeCap()</a>, <a href="#/p5/strokeJoin">strokeJoin()</a>, <a href="#/p5/imageMode">imageMode()</a>, <a href="#/p5/rectMode">rectMode()</a>, <a href="#/p5/ellipseMode">ellipseMode()</a>, <a href="#/p5/colorMode">colorMode()</a>, <a href="#/p5/textAlign">textAlign()</a>, <a href="#/p5/textFont">textFont()</a>, <a href="#/p5/textSize">textSize()</a>, <a href="#/p5/textLeading">textLeading()</a>, <a href="#/p5/applyMatrix">applyMatrix()</a>, <a href="#/p5/resetMatrix">resetMatrix()</a>, <a href="#/p5/rotate">rotate()</a>, <a href="#/p5/scale">scale()</a>, <a href="#/p5/shearX">shearX()</a>, <a href="#/p5/shearY">shearY()</a>, <a href="#/p5/translate">translate()</a> e <a href="#/p5/noiseSeed">noiseSeed()</a>.
redraw__description__0 = A função <a href="#/p5/redraw">redraw()</a> faz com que o código dentro de <a href="#/p5/draw">draw()</a> seja executado uma única vez.
redraw__description__1 = Esta função permite que o programa atualize a janela de exibição apenas quando necessário, por exemplo, quando ocorre um evento registrado por <a href="#/p5/mousePressed">mousePressed()</a> ou <a href="#/p5/keyPressed">keyPressed()</a>.
redraw__description__2 = Na estruturação de um programa, só faz sentido chamar <a href="#/p5/redraw">redraw()</a> em eventos como <a href="#/p5/mousePressed">mousePressed()</a>. Isso ocorre porque <a href="#/p5/redraw">redraw()</a> não executa <a href="#/p5/draw">draw()</a> imediatamente (apenas define um sinalizador que indica que uma atualização é necessária).
redraw__description__3 = A função <a href="#/p5/redraw">redraw()</a> não funciona corretamente quando é chamada dentro de <a href="#/p5/draw">draw()</a>.Para ativar/desatiar animações utilize <a href="#/p5/loop">loop()</a> e <a href="#/p5/noLoop">noLoop()</a>.
redraw__params__n = Número inteiro (optional): Redraw n-vezes. O valor padrão é 1.
p5__description__0 = O construtor <code>p5()</code> permite que você ative o "instance mode" em vez do "global mode".
p5__description__1 = Este é um tópico avançado, uma breve descrição e um exemplo estão incluídos abaixo. Por favor, assista <a target="blank" href="https://www.youtube.com/watch?v=Su792jEauZg&feature=youtu.be"> o tutorial em vídeo do Coding Train de Dan Shiffman</a> eu acesse este <a target="blank" href="https://github.com/processing/p5.js/wiki/p5.js-overview#instantiation--namespace">tutorial</a> para mais informações.
p5__description__2 = Por padrão, todas as funções p5.js estão no global namespace (ou seja, vinculadas ao objeto window), o que significa que você pode chamá-las simplesmente de elipse (), preenchimento (), etc. No entanto, isso pode ser inconveniente se você estiver utilizando junto outras Bibliotecas JS (de forma síncrona ou assíncrona) ou escrevendo seus próprios programas longos. O p5.js atualmente suporta uma maneira de contornar este problema chamado "instance mode". No modo de instância, todas as funções do p5 são agrupadas em uma única variável, em vez de poluir seu global namespace.
p5__description__3 = Opcionalmente, você pode especificar um elemento HTML do tipo container (ex. <code>&lt;div&gt;</code>) padrão para a canvas e quaisquer outros elementos para anexar com um segundo argumento. Você pode fornecer o ID de um elemento em seu html, ou o próprio node (nó) html.
p5__params__sketch = Objeto: uma função contendo o sketch do p5.js
p5__params__node = String|Objeto: ID ou ponteiro para o node (nó) HTML no DOM contendo o sketch do p5.js
applyMatrix__description__0 = Multiplica a matriz atual por aquela especificada nos parâmetros. Esta é uma operação poderosa que pode realizar o equivalente a translação, escala, distorção e rotação, tudo de uma vez. Você pode aprender mais sobre matrizes de transformação em <a href="https://en.wikipedia.org/wiki/Transformation_matrix"> Wikipedia</a>.
applyMatrix__description__1 = A nomenclatura dos argumentos aqui segue a nomenclatura da <a href= "https://html.spec.whatwg.org/multipage/canvas.html#dom-context-2d-transform"> especificação WHATWG</a> and corresponds to a transformation matrix of the form: <blockquote>
applyMatrix__description__2 = <img style="max-width: 150px" src="assets/transformation-matrix.png" alt="a matriz de transformação usada quando applyMatrix é chamado"/> </blockquote>
applyMatrix__params__a = Número|Array: números que definem a matriz 2x3 a ser multiplicada, ou uma matriz de números
applyMatrix__params__b = Número: números que definem a matriz 2x3 a ser multiplicada
applyMatrix__params__c = Número: números que definem a matriz 2x3 a ser multiplicada
applyMatrix__params__d = Número: números que definem a matriz 2x3 a ser multiplicada
applyMatrix__params__e = Número: números que definem a matriz 2x3 a ser multiplicada
applyMatrix__params__f = Número: números que definem a matriz 2x3 a ser multiplicada
resetMatrix__description__0 = Substitui a matriz atual pela matriz de identidade.
rotate__description__0 = Gira uma forma pela quantidade especificada pelo parâmetro de ângulo. Esta função é responsável por <a href="#/p5/angleMode">angleMode</a>, então os ângulos podem ser inseridos em RADIANOS ou GRAUS.
rotate__description__1 = Os objetos são sempre girados em torno de sua posição relativa à origem e os números positivos giram os objetos no sentido horário. As transformações se aplicam a tudo o que acontece depois e as chamadas subsequentes para a função acumulam o efeito. Por exemplo, chamar rotate(HALF_PI) e então rotate(HALF_PI) é o mesmo que rotate(PI). Todas as transformações são redefinidas quando <a href="#/p5/draw">draw()</a> iniciar novamente.
rotate__description__2 = Tecnicamente, <a href="#/p5/rotate">rotate()</a> multiplica a matriz de transformação atual por uma matriz de rotação. Esta função pode ser controlada posteriormente pelo <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a>.
rotate__params__angle = Número: o ângulo de rotação, especificado em radianos ou graus, dependendo do atual angleMode
rotate__params__axis = p5.Vector|Número[] (opcional): (em 3d) eixos de rotação
rotateX__description__0 = Gira uma forma em torno do eixo X pela quantidade especificada no parâmetro de ângulo. Os ângulos podem ser inseridos em RADIANOS ou GRAUS.
rotateX__description__1 = Os objetos são sempre girados em torno de sua posição relativa à origem e os números positivos giram os objetos no sentido horário. Todas as transformações são reiniciadas quando <a href="#/p5/draw">draw()</a> for iterado novamente.
rotateX__params__angle = Número: o ângulo de rotação, especificado em radianos ou graus, dependendo do atual angleMode
rotateY__description__0 = Gira uma forma em torno do eixo Y pelo valor especificado no parâmetro de ângulo. Os ângulos podem ser inseridos em RADIANOS ou GRAUS.
rotateY__description__1 = Os objetos são sempre girados em torno de sua posição relativa à origem e os números positivos giram os objetos no sentido horário. Todas as transformações são reiniciadas quando <a href="#/p5/draw">draw()</a>  for iterado novamente.
rotateY__params__angle = Número: o ângulo de rotação, especificado em radianos ou graus, dependendo do atual angleMode
rotateZ__description__0 = Gira uma forma em torno do eixo Z pelo valor especificado no parâmetro de ângulo. Os ângulos podem ser inseridos em RADIANOS ou GRAUS.
rotateZ__description__1 = Este método apenas funciona em modo WEBGL.
rotateZ__description__2 = Os objetos são sempre girados em torno de sua posição relativa à origem e os números positivos giram os objetos no sentido horário. Todas as transformações são reiniciadas quando <a href="#/p5/draw">draw()</a> for iterado novamente.
rotateZ__params__angle = Número: o ângulo de rotação, especificado em radianos ou graus, dependendo do atual angleMode
scale__description__0 = Aumenta ou diminui o tamanho de uma forma expandindo ou contraindo vértices. Os objetos sempre são escalonados de sua origem relativa ao sistema de coordenadas. Os valores da escala são especificados como porcentagens decimais. Por exemplo, a chamada de função scale (2.0) aumenta a dimensão de uma forma em 200%.
scale__description__1 = As transformações se aplicam a tudo o que acontece depois e as chamadas subsequentes à função multiplicam o efeito. Por exemplo, chamar escala (2,0) e depois escala (1,5) é o mesmo que escala (3,0). Se <a href="#/p5/scale">scale()</a> é chamado dentro de <a href="#/p5/draw">draw()</a>, a transformação é reiniciada quando o loop for iterado novamente.
scale__description__2 = O uso desta função com o parâmetro z está disponível apenas no modo WEBGL. Esta função pode ser controlada posteriormente com <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a>.
scale__params__s = Número|p5.Vector|Número[] (opcional): porcentagem para dimensionar o objeto no eixo x se vários argumentos forem fornecidos
scale__params__y = Número (optional): percentual para dimensionar o objeto no eixo y
scale__params__z = Número (optional): percentual para dimensionar o objeto no eixo z (apenas em webgl)
scale__params__scales = p5.Vector|Número[]: percentagens por eixo para dimensionar o objeto
shearX__description__0 = Corta uma forma em torno do eixo x pelo valor especificado pelo parâmetro de ângulo. Os ângulos devem ser especificados no angleMode atual. Os objetos são sempre cortados em torno de sua posição relativa à origem e os números positivos cortam os objetos no sentido horário.
shearX__description__1 = As transformações se aplicam a tudo o que acontece depois e as chamadas subsequentes para a função acumulam o efeito. Por exemplo, chamar shearX(PI/2) e então shearX(PI/2) é o mesmo que shearX(PI). Se <a href="#/p5/shearX">shearX()</a> é chamado dentro de <a href="#/p5/draw">draw()</a>, a transformação é reiniciada quando o loop  for iterado novamente.
shearX__description__2 = Tecnicamente, <a href="#/p5/shearX">shearX()</a> multiplica a matriz de transformação atual por uma matriz de rotação. Esta função pode ser controlada posteriormente pelas funções <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a> .
shearX__params__angle = Número: ângulo de corte especificado em radianos ou graus, dependendo do angleMode atual
shearY__description__0 = Corta uma forma em torno do eixo y de acordo com o valor especificado pelo parâmetro de ângulo. Os ângulos devem ser especificados no angleMode atual. Os objetos são sempre cortados em torno de sua posição relativa à origem e os números positivos cortam os objetos no sentido horário.
shearY__description__1 = As transformações se aplicam a tudo o que acontece depois e as chamadas subsequentes para a função acumulam o efeito. Por exemplo, chamar shearY (PI/2) e depois shearY(PI/2) é o mesmo que shearY(PI). Se  <a href="#/p5/shearY">shearY()</a> é chamado dentro de <a href="#/p5/draw">draw()</a>, a transformação é reiniciada quando o loop rodar novamente.
shearY__description__2 = Tecnicamente, <a href="#/p5/shearY">shearY()</a> multiplica a matriz de transformação atual por uma matriz de rotação. Esta função pode ser controlada posteriormente pelas funções <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a> .
shearY__params__angle = Número: ângulo de corte especificado em radianos ou graus, dependendo do atual angleMode
translate__description__0 = Especifica uma quantidade para deslocar objetos na janela de exibição. O parâmetro x especifica a translação esquerda / direita, o parâmetro y especifica a translação para cima / para baixo.
translate__description__1 = As transformações são cumulativas e se aplicam a tudo o que acontece depois e as chamadas subsequentes para a função acumulam o efeito. Por exemplo, chamar a translação (50, 0) e então a translação (20, 0) é o mesmo que a translação de (70, 0). Se <a href="#/p5/translate">translate()</a> for chamado dentro de <a href="#/p5/draw">draw()</a>, a transformação é reiniciada quando o loop for iterado novamente. Esta função pode ser posteriormente controlada usando <a href="#/p5/push">push()</a> e <a href="#/p5/pop">pop()</a>.
translate__params__x = Número: translação esquerda/direita
translate__params__y = Número: translação para cima/ para baixo
translate__params__z = Número (opcional): translação para frente/ para trás (apenas em webgl)
translate__params__vector = p5.Vector: o vetor para translação
storeItem__description__0 = Armazena um valor(value) no local storage sob o nome da chave (key). O armazenamento local é salvo no navegador e permanece salvo entre as sessões de navegação e recarregamentos de página. A chave (key) pode ser o nome da variável, mas não obrigatoriamente. Para recuperar os itens armazenados, consulte <a href="#/p5/getItem">getItem</a>. Dados sensíveis como senhas ou infromações pessoais não devem ser armazenados no armazenamento local.
storeItem__params__key = String
storeItem__params__value = String|Number|Object|Boolean|p5.Color|p5.Vector
getItem__description__0 = Retorna o valor de um item que foi armazenado do armazenamento local usando storeItem()
getItem__returns = Number|Object|String|Boolean|p5.Color|p5.Vector: valor do item armazenado
getItem__params__key = String: nome que você deseja utilizar para armazenar no armazenar no armazenamento local
clearStorage__description__0 = Esvazia todos os itens armazenados localmente configurados com storeItem() para o domínio atual.
removeItem__description__0 = Remove um item que foi armazenado com storeItem()
removeItem__params__key = String
createStringDict__description__0 = Cria uma nova instancia de p5.StringDict utilizando o par chave-valor (key-value) ou o objeto que você fornecer.
createStringDict__returns = p5.StringDict:
createStringDict__params__key = String
createStringDict__params__value = String
createStringDict__params__object = Object: object
createNumberDict__description__0 = Cria uma nova instancia de <a href="#/p5.NumberDict">p5.NumberDict</a> utilizando o par chave-valor (key-value) ou o objeto que você fornecer
createNumberDict__returns = p5.NumberDict:
createNumberDict__params__key = Number
createNumberDict__params__value = Number
createNumberDict__params__object = Object: object
select__description__0 = Busca a pagina o primeiro elemento que corresponde a string do seletor CSS determinada (pode ser uma ID, classe, tag ou uma combinação) e o retorna como um <a href="#/p5.Element">p5.Element</a>. O node do DOM pode ser acessado com .elt. Retorna nulo se nenhum for encontrado. Você também pode especificar um container dentro do qual a pesquisa será feita.
select__returns = p5.Element|null: <a href="#/p5.Element">p5.Element</a> contendo o node encontrado
select__params__selectors = String: string do seletor CSS do elemento a ser buscado
select__params__container = String|p5.Element|HTMLElement (Opcional): string do seletor CSS, <a href="#/p5.Element">p5.Element</a>  , ou elemento HTML dentro do qual deve ser buscado
selectAll__description__0 = Busca na pagina todos os elementos que correspondem a string do seletor CSS determinada (pode ser uma ID, classe, tag ou uma combinação) e os retornam como <a href="#/p5.Element">p5.Element</a>s em um array(array?). O node do DOM pode ser acessado com .elt. Retorna um array vazio se nada for encondrado. Você também pode especificar um container dentro do qual a pesquisa será feita.
selectAll__returns = p5.Element[]: Uma array de <a href="#/p5.Element">p5.Element</a>s contendo os nodes encontrados
selectAll__params__selectors = String: string do seletor CSS do elemento a ser buscado
selectAll__params__container = String|p5.Element|HTMLElement (Opcional): string do seletor CSS, <a href="#/p5.Element">p5.Element</a>, ou elemento HTML dentro do qual deve ser buscado
removeElements__description__0 = Remove todos os elementos criados pelo p5, exceto a canvas ou elementos gráficos criados por <a href="#/p5/createCanvas">createCanvas</a> ou <a href="#/p5/createGraphics">createGraphics</a>. !! Event handlers e o elemento são removidos do DOM.
changed__description__0 = A função <a href="#/p5.Element/changed">changed()</a> é chamada quando o valor de um elemento é alterado. Pode ser utilizada !! para anexar um !!event listener específico de um elemeto.
changed__params__fxn = Função | Booleano: função a ser disparada quando o valor de um elemento é alterado. Se  <code>false</code> (falso) for passado como parâmetro, a função disparadora anterior não será mais disparada.
input__description__0 = A função <a href="#/p5.Element/input">input()</a> é chamada quando é detectado aulgum input do usuário dentro de um elemento. O evento de input normalmente é usado para detectar pressionamentos de teclas em um elemento de input ou  alterações em um elemento slider (controle deslizante). Pode ser utilizada !! para anexar um !!event listener específico de um elemeto.
input__params__fxn = Função | Booleano: função a ser disparada quando algum input do usuário é detectado dentro do elemento. Se  <code>false</code> for passado como parâmetro, a função disparadora anterior não será mais disparada.
createDiv__description__0 = Cria um elemento <code>&lt;div&gt;</code> no DOM com o HTML interno fornecido.
createDiv__returns = p5.Element: ponteiro para <a href="#/p5.Element">p5.Element</a> que contém o node criado.
createDiv__params__html = String (Opcional):  HTML interno para o elemento criado.
createP__description__0 = Cria um elemento <code>&lt;p&gt;&lt;/p&gt;</code> (parágrafo) no DOM com o HTML interno fornecido.
createP__returns = p5.Element: ponteiro para <a href="#/p5.Element">p5.Element</a> que contém o node criado.
createP__params__html = String(Opcional):  HTML interno para o elemento criado.
createSpan__description__0 = Cria um elemento <code>&lt;span&gt;&lt;/span&gt;</code> no DOM com o HTML interno fornecido.
createSpan__returns = p5.Element: ponteiro para <a href="#/p5.Element">p5.Element</a> que contém o node criado.
createSpan__params__html = String(Opcional):  HTML interno para o elemento criado.
createImg__description__0 = Cria um elemento <code>&lt;img&gt;</code> no DOM com a fonte (src) e o texto altenativo (alt) fornecidos.
createImg__returns = p5.Element: ponteiro para <a href="#/p5.Element">p5.Element</a> que contém o node criado.
createImg__params__src = String: fonte (src) da Imagem, pode ser o endereço do arquivo ou uma url.
createImg__params__alt = String: <a href="https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/Img#attr-alt">texto alternativo</a> (alt) atributo da imagem usado caso o arquivo não possa ser carregado. Você também pode usar uma string vazia (<code>""</code>) caso a intençao seja que a imagem não seja vista.
createImg__params__crossOrigin = String: <a href="https://developer.mozilla.org/en-US/docs/Web/HTML/CORS_settings_attributes">atributo crossorigin</a> do elemento <code>&lt;img&gt;</code>;
createImg__params__successCallback = Função  callback a ser chamada quando os dados da image são carregados com o <a href="#/p5.Element">p5.Element</a> como argumento
createA__description__0 = Cia um elemento <code>&lt;a&gt;&lt;/a&gt;</code> no DOM com um hyperlink (hiperligação).
createA__returns = p5.Element: ponteiro para o <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado
createA__params__href = String: url da página a ser vinculada
createA__params__html = String: HTML interno do elemento.
createA__params__target = String (Opcional): atributo target, este atributo define a forma como o hyperlink (hiperligação) será aberta. Podem ser definidos os valores: _blank, _self, _parent, _top.
createSlider__description__0 = Cria um elemento de <code>&lt;input&gt;&lt;/input&gt;</code> em forma de slider (controle deslizante) no DOM. Use .size() para configurar o comprimento do slider (controle deslizante).
createSlider__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado
createSlider__params__min = Número: valor mínimo do slider
createSlider__params__max = Número: valor máximo do slider
createSlider__params__value = Número (opcional): valor padrão do slider
createSlider__params__step = Número (opcional); valor do incremento para cada marcação do slider (se o valor do incremento for 0, o slider vai se movimentar continuamente entre o valor mínimo e o máximo)
createButton__description__0 = Cia um elemento <code>&lt;button&gt;&lt;/button&gt;</code> no DOM. Use .size() para configurara o tamanho do botão. Use .mousePressed() para especificar o comportamento ao pressionar.
createButton__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado
createButton__params__label = String: label (etiqueta) exibida no botão
createButton__params__value = String (Opcional): valor do botão
createCheckbox__description__0 = Cria um elemento de <code>&lt;input&gt;&lt;/input&gt;</code> em forma de checkbox (caixas de seleção) no DOM. Chamando .checked() on a checkbox retorna true (verdadeiro) se ela estiver marcada ou false (falso) caso não esteja.
createCheckbox__returns = p5.Element: pontero para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado
createCheckbox__params__label = String (Opcional): label (etiqueta) exibida após a checkbox
createCheckbox__params__value = Booleano (Ocional): valor da checkbox; se a caixa estiver marcada o valor será true (verdadeiro), se a caixa estiver desmarcada será false (falso)
createSelect__description__0 = Cria um elemento de seleção <code>&lt;select&gt;&lt;/select&gt;</code> em forma de lista suspensa no DOM. Também ajuda a atribuir métodos de caixa de seleção a <a href="#/p5.Element"> p5.Element </a> ao selecionar a caixa de seleção existente. <li><code>.option(name, [value])</code> pode ser utilizado para configurar opções para a selecão depois de criada.</li><li><code>.value()</code> retornará a opção selecionada no momento.</li><li><code>.selected()</code> retornará o elemento da lista suspensa atual que é uma instância do <a href="#/p5.Element">p5.Element</a>.</li><li><code>.selected(value)</code> pode ser usado para tornar determinado item selecionado por padrão quando a página é carregada pela primeira vez.</li><li><code>.disable()</code> marca toda lista suspensa como desativada.</li><li><code>.disable(value)</code> marca o item determinado como desativado.</li> </ul>
createSelect__returns = p5.Element:
createSelect__params__multiple = Booleano (Opcional): true (verdadeiro) se o elemento suportar várias seleções
createSelect__params__existing = Objeto: elemento de seleção do DOM
createRadio__description__0 = Cria um elemento HTML de <code>&lt;input&gt;&lt;/input&gt;</code> do tipo botão de escolha <a href= "https://developer.mozilla.org/pt-BR/docs/Web/HTML/Element/input#:~:text=radio%3A%20Um%20bot%C3%A3o,de%20cada%20vez..">(tipe = "radio")</a> no DOM. Também auxilia a atribuir métodos de <a href="#/p5.Element/">p5.Element</a> a botões de escolha (radio) existentes.<ul> <li>O método <code>.option(value, [label])</code> pode ser utilizado para criar um novo item para o elemento. Se já existir um item com o valor indicado, o método retornará este item. Opcionalmente, um label (etiqueta) pode ser fornecido como segundo argumento para o item.</li><li>O método <code>.remove(value)</code> pode ser utilizado para remover um item do elemento.</li><li>O método <code>.value()</code> retorna o valor do item selecionado no momento.</li><li>O método <code>.selected()</code> retorna o elemento de input selecionado no momento.</li><li>O método <code>.selected(value)</code> marca um item como selecionado, retorna ele mesmo.</li><li>O método <code>.disable(Boolean)</code> desativa/ativa o elemento todo.</li> </ul>
createRadio__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado.
createRadio__params__containerElement = Objeto: Um elemento container de HTML, pode ser um <code>&lt;div&gt;&lt;/div&gt;</code> ou <code>&lt;span&gt;&lt;/span&gt;</code>, dentro do qual todas os inputs existentes serão considerados como itens do botão de escolha.
createRadio__params__name = String (Opcional): parâmetro nome para cada elemnto de input.
createColorPicker__description__0 = Cria um elemento no DOM para input de cor. O método <code>.value()<code> retorna uma string HEX (#rrggbb) da cor. O método <code>.color()<code> retorna um objeto p5.Color com a selecão de cor atual.
createColorPicker__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado.
createColorPicker__params__value = String|p5.Color (Opcional): cor padrão do elemento.
createInput__description__0 = Cria um elemento de <code>&lt;input&gt;&lt;/input&gt;</code> de texto no DOM. Use .<a href="#/p5.Element/size">size()</a> para configurar o tamanho da caixa de texto.
createInput__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) do DOM criado.
createInput__params__value = String: default valor padrão da caixa de texto do input
createInput__params__type = String (Opcional): tipo do texto, por ex.: "text", "password" etc. Por padrão o tipo definido é "text".
createFileInput__description__0 = Cria um elemento de <code>&lt;input&gt;&lt;/input&gt;</code> de arquivo no DOM. Permite que usuários carreguem arquivos locais para utilizar em um sketch.
createFileInput__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) do DOM criado.
createFileInput__params__callback = Função: Funcão callback para quando o arquivo é carregado.
createFileInput__params__multiple = Booleano (Opcional): permite que múltiplos arquivos sejam selecionados.
createVideo__description__0 = Cria um elemento de <code>&lt;video&gt;</code> HTML5 no DOM para a reprodução simples de áudio/video. O elemento de vídeo é definido como visível por padrão, pode ser ocultado com o método .<a href="#/p5.Element/hide">hide()</a>  e desenhado na canvas utilizando <a href="#/p5/image">image()</a>. O primeiro parâmetro pode ser uma única string com o caminho para um arquivo de vídeo ou uma array de strings com endereços de arquivos de videos em diferentes formatos de arquivo. Isso é útil para garantir que seu vídeo possa ser reproduzido em diferentes navegadores, já que cada um suporta formatos diferentes. Você pode encontrar mais informações sobre os formatos de mídias suportados <a href = "https://developer.mozilla.org/pt-BR/docs/Web/Media/Formats"> aqui </a>.
createVideo__returns = p5.MediaElement: ponteiro para um <a href="#/p5.Element">p5.Element</a> de vídeo.
createVideo__params__src = String | String[]: endereço do arquivo de video ou uma array de endereços de arquivos de video em formatos diferentes.
createVideo__params__callback = Função (Optional): função callback chamada no disparo do evento 'canplaythrough', ou seja, quando a mídia está pronta para ser reproduzida, e estima que já foram carregados dados suficientes para reproduzir a mídia sem interrupcões para mais buffering.
createAudio__description__0 = Cria um elemento de <code>&lt;audio&gt;</code> HTML5 no DOM element in the DOM para a reprodução simples de áudio. Por definição, o elemento de áudio é criado como um elemento oculto (hidden). O primeiro parâmetro pode ser uma única string com o caminho para um arquivo de áudio ou uma array de strings com endereços de arquivos de áudio em diferentes formatos de arquivo. Isso é útil para garantir que seu vídeo possa ser reproduzido em diferentes navegadores, já que cada um suporta formatos diferentes. Você pode encontrar mais informações sobre os formatos de mídias suportados <a href = "https://developer.mozilla.org/pt-BR/docs/Web/Media/Formats">aqui</a>.
createAudio__returns = p5.MediaElement: ponteiro para um <a href="#/p5.Element">p5.Element</a> de áudio.
createAudio__params__src = String | String[] (Opcional): endereço do arquivo ou uma array de endereços de arquivos em formatos diferentes.
createAudio__params__callback = Função (Opcional): função chamada no disparo do evento 'canplaythrough', ou seja, quando a mídia está pronta para ser reproduzida, e estima que já foram carregados dados suficientes para reproduzir a mídia sem interrupcões para mais buffering.
createCapture__description__0 = Cria um novo elemento <code>&lt;video&gt;</code> HTML5 que contém o fluxo de áudio e vídeo de uma webcam. O elemento de vídeo é definido como visível por padrão, pode ser ocultado com o método .<a href="#/p5.Element/hide">hide()</a>  e desenhado na canvas utilizando <a href="#/p5/image">image()</a>. A propriedade loadedmetadata pode ser utilizada para detectar quando o elemento for totalmente carregado (ver o segundo exemplo).
createCapture__description__1 = !! More specific properties of the feed can be passing in a Constraints object. See the <a href='http://w3c.github.io/mediacapture-main/getusermedia.html#media-track-constraints'> W3C spec</a> for possible properties. Note that not all of these are supported by all browsers.
createCapture__description__2 = <em>Nota de segurança</em>: Devido a especificações de segurança dos navegadores é preciso solicitar ao usuário permissão para utilizar entradas de mídia como a webcam, para isso o método <a href="https://developer.mozilla.org/en-US/docs/Web/API/MediaDevices/getUserMedia"> .getUserMedia() </a> é utilizado dentro da função <a href="#/p5/createCapture">createCapture()</a>, também por razões de segurança este método só pode ser executado quando o código está rodando localmente ou sob o protocolo HTTPS.
createCapture__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> com fluxo de video da webcam
createCapture__params__type = String | Constante | Objeto: tipo da captura. AUDIO e VIDEO são as definições padrão caso nenhuma especificação seja passada. !! Também pode ser definido por !! Constraints object
createCapture__params__callback = Função (Opcional): função chamada quando o fluxo de mídia é carregado.
createElement__description__0 = Cria um elemento HTML no DOM com segundo a tag definida.
createElement__returns = p5.Element: ponteiro para um <a href="#/p5.Element">p5.Element</a> contendo o node (nó) criado.
createElement__params__tag = String: tag HTML do novo elemento
createElement__params__content = String (Opcional): conteúdo HTML do elemento.
deviceOrientation__description__0 = A variável global <code>deviceOrientation</code>, embutida na biblioteca p5.js, armazena a orientação do dispositivo em que o sketch está sendo executado. O valor da variável será LANDSCAPE (horizontal) ou PORTRAIT (vertical). Se nenhuma informação estiver disponível, o valor será <i>undefined</i> (indefinido).
accelerationX__description__0 = A variável global <code>accelerationX</code>, embutida na biblioteca p5.js, armazena a aceleração do dispositivo no eixo X. O valor é representado como metros por segundo ao quadrado.
accelerationY__description__0 = A variável global <code>accelerationY</code>, embutida na biblioteca p5.js, armazena a aceleração do dispositivo no eixo Y. O valor é representado como metros por segundo ao quadrado.
accelerationZ__description__0 = A variável global <code>accelerationZ</code>, embutida na biblioteca p5.js, armazena a aceleração do dispositivo no eixo Z. O valor é representado como metros por segundo ao quadrado.
pAccelerationX__description__0 = A variável global <code>pAccelerationX</code>, embutida na biblioteca p5.js, armazena a aceleração do dispositivo no eixo X no frame anterior ao atual. O valor é representado como metros por segundo ao quadrado.
pAccelerationY__description__0 = A variável global <code>pAccelerationY</code>, embutida na biblioteca p5.js, armazena a aceleração do dispositivo no eixo Y no frame anterior ao atual. O valor é representado como metros por segundo ao quadrado.
pAccelerationZ__description__0 = A variável global <code>pAccelerationZ</code>, embutida na biblioteca p5.js, armazena a aceleração do dispositivo no eixo Z no frame anterior ao atual. O valor é representado como metros por segundo ao quadrado.
rotationX__description__0 = A variável global <code>rotationX</code>, embutida na biblioteca p5.js, armazena a rotação do dispositivo em relação ao eixo X. Se o modo de ângulo do sketch (<a href="#/p5/angleMode">angleMode()</a>) estiver definido como graus (DEGREES), o valor será entre -180 e 180. Caso esteja definido como radianos (RADIANS), o valor será entre -PI e PI.
rotationX__description__1 = Nota: A ordem em que as rotações são chamas é importate. Se usadas em conjunto, é preciso chamá-las na ordem Z-X-Y, ou é possível que aconteçam comportamentos inesperados.
rotationY__description__0 = A variável global <code>rotationY</code>, embutida na biblioteca p5.js, armazena a rotação do dispositivo em relação ao eixo Y. Se o modo de ângulo do sketch (<a href="#/p5/angleMode">angleMode()</a>) estiver definido como graus (DEGREES), o valor será entre -90 e 90. Caso esteja definido como radianos (RADIANS), o valor será entre -PI/2 e PI/2.
rotationY__description__1 = Nota: A ordem em que as rotações são chamas é importate. Se usadas em conjunto, é preciso chamá-las na ordem Z-X-Y, ou é possível que aconteçam comportamentos inesperados.
rotationZ__description__0 = A variável global <code>rotationZ</code>, embutida na biblioteca p5.js, armazena a rotação do dispositivo em relação ao eixo Z. Se o modo de ângulo do sketch (<a href="#/p5/angleMode">angleMode()</a>) estiver definido como graus (DEGREES), o valor será entre 0 e 360. Caso esteja definido como radianos (RADIANS), o valor será entre 0 e 2*PI.
rotationZ__description__1 = Nota: A ordem em que as rotações são chamas é importate. Se usadas em conjunto, é preciso chamá-las na ordem Z-X-Y, ou é possível que aconteçam comportamentos inesperados.
pRotationX__description__0 = A variável global <code>pRotationX</code>, embutida na biblioteca p5.js, armazena a rotação do dispositivo em relação ao eixo X no frame anterior ao atual. Se o modo de ângulo do sketch (<a href="#/p5/angleMode">angleMode()</a>) estiver definido como graus (DEGREES), o valor será entre -180 e 180. Caso esteja definido como radianos (RADIANS), o valor será entre -PI e PI.
pRotationX__description__1 = <code>pRotationX</code> pode ser utilizada em conjunto com <a href="#/p5/rotationX"><code>rotationX</code></a> para determinar a direção de rotação do dispositivo no eixo X.
pRotationY__description__0 = A variável global <code>pRotationY</code>, embutida na biblioteca p5.js, armazena a rotação do dispositivo em relação ao eixo Y no frame anterior ao atual. Se o modo de ângulo do sketch (<a href="#/p5/angleMode">angleMode()</a>) estiver definido como graus (DEGREES), o valor será entre -90 e 90. Caso esteja definido como radianos (RADIANS), o valor será entre -PI/2 e PI/2.
pRotationY__description__1 = <code>pRotationY</code> pode ser utilizada em conjunto com <code><a href="#/p5/rotationY">rotationY</a></code> para determinar a direção de rotação do dispositivo no eixo Y.
pRotationZ__description__0 = A variável global <code>pRotationZ</code>, embutida na biblioteca p5.js, armazena a rotação do dispositivo em relação ao eixo Z no frame anterior ao atual. Se o modo de ângulo do sketch (<a href="#/p5/angleMode">angleMode()</a>) estiver definido como graus (DEGREES), o valor será entre 0 e 360. Caso esteja definido como radianos (RADIANS), o valor será entre 0 e 2*PI.
pRotationZ__description__1 = <code>pRotationZ</code> pode ser utilizada em conjunto com <code><a href="#/p5/rotationZ">rotationZ</a></code> para determinar a direção de rotação do dispositivo no eixo Z.
turnAxis__description__0 = Quanto o dispositivo é rotacionado, o método <a href="#/p5/deviceTurned"><code>deviceTurned()</code></a> é acionado, e o eixo de rotação é armazenado na variável <code>turnAxis</code>. Essa variável só é definida dentro do escopo de <code>deviceTurned()</code>.
setMoveThreshold__description__0 = A função <a href="#/p5/setMoveThreshold"><code>setMoveThreshold()</code></a> é utilizada para definir o limiar de movimento da função <a href="#/p5/deviceMoved"><code>deviceMoved()</code></a>. O valor limiar padrão é 0.5.
setMoveThreshold__params__value = Número: o valor do limiar
setShakeThreshold__description__0 = A função <a href="#/p5/setShakeThreshold"><code>setShakeThreshold()</code></a> é utilizada para definir o limiar de movimento da função <a href="#/p5/deviceShaken"><code>deviceShaken()</code></a>. O valor limiar padrão é 30.
setShakeThreshold__params__value = Número: o valor do limiar
deviceMoved__description__0 = A função <a href="#/p5/deviceMoved"><code>deviceMoved()</code></a> é chamada quando o dispositivo for movido para além do limiar em qualquer um dos eixos (X, Y ou Z). O valor limiar padrão é 0.5, e pode ser alterado através da função <a href="#/p5/setMoveThreshold"><code>setMoveThreshold()</code></a>.
deviceTurned__description__0 = A função <a href="#/p5/deviceTurned"><code>deviceTurned()</code></a> é chamada quando o dispositivo for rotacionado mais de 90 graus contínuos em qualquer eixo (X, Y ou Z).
deviceTurned__description__1 = O eixo que dispara este método é armazenado na variável <a href="#/p5/turnAxis"><code>turnAxis</code></a>. Assim, é possível direcionar sua execução para eixos específicos ao comparar a variável <a href="#/p5/turnAxis"><code>turnAxis</code></a> com 'X', 'Y' ou 'Z'
deviceShaken__description__0 = A função <a href="#/p5/deviceShaken"><code>deviceShaken()</code></a> é chamada quando a aceleração total do dispositivo nos eixos X (<a href="#/p5/accelerationX"><code>accelerationX</code></a>) e Y (<a href="#/p5/accelerationY"><code>accelerationY</code></a>) for superior ao valor limiar.
keyIsPressed__description__0 = A variável booleana global <a href="#/p5/keyIsPressed"><code>keyIsPressed</code></a> é <code>true</code> (verdadeira) quando uma tecla está pressionada, e <code>false</code> (falsa) quando não.
key__description__0 = A variável global <code>key</code> armazena o valor da última tecla que foi pressionada no teclado. Para garantir que o resultado transmita a informação correta em relação a minúsculas ou maiúsculas, é melhor utilizá-la dentro da função <a href="#/p5/keyTyped"><code>keyTyped()</code></a>. Para teclas especiais ou caracteres fora do padrão <a href="https://pt.wikipedia.org/wiki/ASCII" target="_blank">ASCII</a>, utilize a variável <a href="#/p5/keyCode"><code>keyCode</code></a>.
keyCode__description__0 = A variável global <code>keyCode</code> armazena o código correspondente à última tecla que foi pressionada no teclado. Diferente da variável <a href="#/p5/key"><code>key</code></a>, <code>keyCode</code> permite detectar teclas especiais. Para tal, é preciso comparar a variável com o código correspondente à tecla especial desejada, ou com as constantes correspondentes como <code>BACKSPACE</code>, <code>DELETE</code>, <code>ENTER</code>, <code>RETURN</code>, <code>TAB</code>, <code>ESCAPE</code>, <code>SHIFT</code>, <code>CONTROL</code>, <code>OPTION</code>, <code>ALT</code>, <code>UP_ARROW</code> (seta superior), <code>DOWN_ARROW</code> (seta inferior), <code>LEFT_ARROW</code> (seta esquerda), <code>RIGHT_ARROW</code> (seta direita). Você também pode utilizar um site como <a href="http://keycode.info/">keycode.info</a> para encontrar o código da tecla (key code) de qualquer tecla em seu teclado.
keyPressed__description__0 = A função <code>keyPressed()</code> é chamada a cada vez que uma tecla é pressionada. O código da tecla e seu valor são então armazenados nas variáveis <a href="#/p5/keyCode"><code>keyCode</code></a> e <a href="#/p5/key"><code>key</code></a>.
keyPressed__description__1 = Para caracteres dentro do padrão <a href="https://pt.wikipedia.org/wiki/ASCII" target="_blank">ASCII</a>, o valor da tecla é armazenado na variável <a href="#/p5/key"><code>key</code></a>. No entanto, a distinção entre maiúsculas e minúsculas não é garantida. Caso essa distinção seja necessária, é recomendado ler a variável dentro da função <a href="#/p5/keyTyped"><code>keyTyped()</code></a>.
keyPressed__description__2 = Para caracteres fora do padrão <a href="https://pt.wikipedia.org/wiki/ASCII" target="_blank">ASCII</a>, o código da tecla é armazenado na variável <a href="#/p5/keyCode"><code>keyCode</code></a>. Ela permite detectar teclas especiais ao ser comparada com o código correspondente à tecla especial desejada, ou com as constantes correspondentes como <code>BACKSPACE</code>, <code>DELETE</code>, <code>ENTER</code>, <code>RETURN</code>, <code>TAB</code>, <code>ESCAPE</code>, <code>SHIFT</code>, <code>CONTROL</code>, <code>OPTION</code>, <code>ALT</code>, <code>UP_ARROW</code> (seta superior), <code>DOWN_ARROW</code> (seta inferior), <code>LEFT_ARROW</code> (seta esquerda), <code>RIGHT_ARROW</code> (seta direita).
keyPressed__description__3 = Por causa da forma com que os sistemas operacionais tratam repetições nas teclas, pressionar continuamente uma tecla pode causar chamadas múltiplas aos métodos <code>keyPressed()</code>, <a href="#/p5/keyTyped">keyTyped()</a> e <a href="#/p5/keyReleased">keyReleased()</a>. A frequência de repetição é definida pelo sistema operacional, e pela configuração de cada dispositivo. Navegadores podem ter comportamentos diferentes relacionados a cada evento de tecla. Para previnir qualquer comportamento padrão, adicione <code>return false</code> ao fim do método.
keyPressed__params__event = Objeto (opcional): argumento de callback do tipo <a href="https://developer.mozilla.org/pt-BR/docs/Web/API/KeyboardEvent">KeyboardEvent</a> (evento de teclado)
keyReleased__description__0 = A função <code>keyReleased()</code> é chamada a cada vez que uma tecla é liberada após ser pressionada. Veja <a href="#/p5/key"><code>key</code></a> e <a href="#/p5/keyCode"><code>keyCode</code></a> para mais detalhes.
keyReleased__params__event = Objeto (opcional): argumento de callback do tipo <a href="https://developer.mozilla.org/pt-BR/docs/Web/API/KeyboardEvent">KeyboardEvent</a> (evento de teclado)
keyTyped__description__0 = A função <code>keyTyped()</code> é chamada a cada vez que uma tecla é pressionada, mas teclas de ação como Backspace, Delete, Ctrl, Shift, e Alt são ignoradas. A última tecla pressionada é armazenada na variável <a href="#/p5/key"><code>key</code></a>. Caso esteja buscando o código da tecla, utilize a função <a href="#/p5/keyPressed"><code>keyPressed()</code></a>.
keyTyped__description__1 = Por causa da forma com que os sistemas operacionais tratam repetições nas teclas, pressionar continuamente uma tecla pode causar chamadas múltiplas aos métodos <code>keyTyped()</code>, <a href="#/p5/keyPressed"><code>keyPressed()</code></a> e <a href="#/p5/keyReleased"><code>keyReleased()</code></a>. A frequência de repetição é definida pelo sistema operacional, e pela configuração de cada dispositivo. Navegadores podem ter comportamentos diferentes relacionados a cada evento de tecla. Para previnir qualquer comportamento padrão, adicione <code>return false</code> ao fim do método.
keyTyped__params__event = Objeto (opcional): argumento de callback do tipo <a href="https://developer.mozilla.org/pt-BR/docs/Web/API/KeyboardEvent">KeyboardEvent</a> (evento de teclado)
keyIsDown__description__0 = A função <code>keyIsDown()</code> verifica se alguma tecla está sendo pressionada. Ela pode ser utilizada caso você queira que diversas teclas afetem o comportamento de um objeto simultaneamente. Por exemplo, você pode querer que um objeto mova diagonalmente somente se as setas esquerda e superior estejam pressionadas ao mesmo tempo.
keyIsDown__returns = Booleano: se a tecla está pressionada ou não
keyIsDown__params__code = Número: A tecla a ser verificada
movedX__description__0 = A variável <code>movedX</code> contém o movimento horizontal do mouse desde o último quadro (frame).
movedY__description__0 = A variável <code>movedY</code> contém o movimento vertical do mouse desde o último quadro (frame).
mouseX__description__0 = A variável global <code>mouseX</code> armazena a posição horizontal do mouse no quadro (frame) atual, relativa ao sistema de coordenadas da canvas. O valor no canto superior esquerdo é <code>(0, 0)</code> para 2D e <code>(-width/2, -height/2)</code> para WebGL. Se o aparelho utilizar touch em vez do mouse, <code>mouseX</code> armazenará o valor de X do último toque.
mouseY__description__0 = A variável global <code>mouseY</code> armazena a posição vertical do mouse no quadro (frame) atual, relativa ao sistema de coordenadas da canvas. O valor no canto superior esquerdo é <code>(0, 0)</code> para 2D e <code>(-width/2, -height/2)</code> para WebGL. Se o aparelho utilizar touch em vez do mouse, <code>mouseY</code> armazenará o valor de Y do último toque.
pmouseX__description__0 = A variável global <code>pmouseX</code> armazena a posição horizontal do mouse ou dedo no quadro (frame) anterior ao atual, relativa ao sistema de coordenadas da canvas. O valor no canto superior esquerdo é <code>(0, 0)</code> para 2D e <code>(-width/2, -height/2)</code> para WebGL. Nota: <code>pmouseX</code> será atribuída ao valor atual de <code>mouseX</code> no início de cada evento de toque.
pmouseY__description__0 = A variável global <code>pmouseY</code> armazena a posição vertical do mouse ou dedo no quadro (frame) anterior ao atual, relativa ao sistema de coordenadas da canvas. O valor no canto superior esquerdo é <code>(0, 0)</code> para 2D e <code>(-width/2, -height/2)</code> para WebGL. Nota: <code>pmouseY</code> será atribuída ao valor atual de <code>mouseY</code> no início de cada evento de toque.
winMouseX__description__0 = A variável global <code>winMouseX</code> armazena a posição horizontal do mouse no frame atual, relativo ao sistema de coordenadas da janela do browser.
winMouseY__description__0 = A variável global <code>winMouseY</code> armazena a posição vertical do mouse no frame atual, relativo ao sistema de coordenadas da janela do browser.
pwinMouseX__description__0 = A variável global <code>pwinMouseX</code> armazena a posição horizontal do mouse no frame anterior ao atual, relativo ao sistema de coordenadas da janela do browser. Nota: <code>pwinMouseX</code> será definido como a posição atual do mouse ( <code>winMouseX</code>) no início de cada evento de toque.
pwinMouseY__description__0 = A variável global <code>pwinMouseY</code> armazena a posição vertical do mouse no frame anterior ao atual, relativo ao sistema de coordenadas da janela do browser. Nota: <code>pwinMouseY</code> será definido como a posição atual do mouse ( <code>winMouseY</code>) no início de cada evento de toque.
mouseButton__description__0 = A biblioteca p5 rastreia automaticamente se algum botão do mouse é pressionado, e qual botão é pressionado. O valor da variável global <code>mouseButton</code> é <code>LEFT</code> (referente ao botão esquerdo), <code>RIGHT</code> (referente ao botão direito), ou <code>CENTER</code> (referente ao botão central), dependendo de qual botão foi pressionado por último. Aviso: diferentes navegadores podem rastrear <code>mouseButton</code> de forma diferente.
mouseIsPressed__description__0 = A variável global booleana <code>mouseIsPressed</code> é <code>true</code> (verdadeira) caso algum botão do mouse esteja pressionado, e <code>false</code> (falsa) caso não.
mouseMoved__description__0 = A função <code><a href="#/p5/mouseMoved"> mouseMoved () </a></code> é chamada toda vez que o mouse se move sem que um botão seja pressionado.Os navegadores podem ter diferentes comportamentos padrão associados aos eventos de mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método.
mouseMoved__params__event = Objeto (opcional): evento do mouse (<code>MouseEvent</code>) de <em>callback</em>.
mouseDragged__description__0 = A função <code>mouseDragged()</code> é chamada a cada vez que o mouse se move enquanto um botão do mouse é pressionado. Se nenhuma função <code>mouseDragged()</code> for definida, e a função <code><a href="#/p5/touchMoved">touchMoved()</a></code> for definida, esta será chamada em lugar da primeira. Os navegadores podem ter diferentes padrões de comportamentos associados aos eventos de mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método.
mouseDragged__params__event = Objeto (opcional): argumento de <em>callback</em> do evento do mouse (<code>MouseEvent</code>).
mousePressed__description__0 =
    A função <code>mousePressed()</code> é chamada a cada vez que um botão do mouse é pressionado. A variável <code><a href="#/p5/mousePressed">mouseButton</a></code> pode, então, ser usada para determinar qual botão foi pressionado. Se a função <code>mousePressed()</code> não for definida no seu código, e houver definição para a função <code><a href="#/p5/touchStarted">touchStarted()</a></code>, esta será chamada no lugar da primeira.
    
    Os navegadores podem ter diferentes padrões de comportamento associados aos eventos do mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método.
mousePressed__params__event = Objeto (opcional): argumento de <em>callback</em> do evento do mouse (<code>MouseEvent</code>).
mouseReleased__description__0 = A função <code>mouseReleased()</code> é chamada toda vez que um botão do mouse é liberado após ter sido pressionado. Se nenhuma função <code>touchEnded()</code> for definida, a função <code><a href="#/p5/touchEnded">touchEnded()</a></code>, caso esteja definida, será chamada em seu lugar. Os navegadores podem ter diferentes comportamentos padrão associados aos eventos de mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método.
mouseReleased__params__event = Objeto (opcional): argumento de <em>callback</em> do evento do mouse (<code>MouseEvent</code>).
mouseClicked__description__0 =
    A função <code>mouseClicked()</code> é chamada a cada vez que um botão do mouse é pressionado e então liberado. Navegadores processam cliques de forma diferente, portanto o funcionamento dessa função só é garantido quando o botão esquerdo for clicado. Para verificar cliques em outros botões, prefira as funções  <code><a href="#/p5/mousePressed">mousePressed()</a></code> ou <code><a href="#/p5/mouseReleased">mouseReleased()</a></code>. 
    Os navegadores podem ter diferentes comportamentos padrão associados aos eventos do mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método.
    
    Se nenhuma função <a href="#/p5/mouseReleased"> mouseReleased () </a> for definida, a função <a href="#/p5/touchEnded"> touchEnded () </a> será chamada em seu lugar se estiver definido. Os navegadores podem ter diferentes comportamentos padrão associados a vários eventos de mouse. Para evitar qualquer comportamento padrão para este evento, adicione "return false" ao final do método.
mouseClicked__params__event = Objeto (opcional): argumento de <em>callback</em> do evento do mouse (<code>MouseEvent</code>).
doubleClicked__description__0 =
    A função <code>doubleClicked()</code> é executada quando uma função de escuta de eventos (<i>event listener</i>) detecta um evento do tipo <code>dblclick</code>, que é parte da <a href="https://www.w3.org/TR/DOM-Level-3-Core/" rel="noopener noreferrer nofollow" 
       target="_blank">especificação L3 do DOM</a>. Este evento é disparado quando um botão (geralmente o botão principal do mouse) clica duas vezes sobre um mesmo elemento. Para mais informações sobre o evento <code>dblclick</code>, acesse a <a href="https://developer.mozilla.org/en-US/docs/Web/Events/dblclick">documentação da Mozilla sobre o tema (em inglês)</a>.
doubleClicked__params__event = Objeto (opcional): argumento de <em>callback</em> do evento do mouse (<code>MouseEvent</code>).
mouseWheel__description__0 =
    A função <code>mouseWheel()</code> é executada a cada vez que um evento de rolagem vertical for detectado, seja através de uma roda de rolagem, ou um trackpad. A propriedade <code> event.delta</code> retorna a quantia que a roda foi rolada. Os valores podem ser positivos ou negativos, dependendo da direção da rolagem -- em um computador OS X, com a "rolagem natural" ativada, os sinais são invertidos.
    Os navegadores podem ter diferentes comportamentos padrão associados aos eventos do mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método. Devido ao suporte atual do evento <em>wheel</em> no Safari, para que a função funcione como esperado, é preciso adicionar <code>return false</code> ao fim do método para rodar o programa neste browser.
mouseWheel__params__event = Objeto (opcional): argumento de <em>callback</em> do evento de rolagem (<code>WheelEvent</code>).
requestPointerLock__description__0 = A função <code>requestPointerLock()</code> trava o cursor em sua posição atual e o torna invisível. Utilize as variáveis <code><a href="#/p5/movedX">movedX</a></code> e <code><a href="#/p5/movedY">movedY</a></code> para acessar o movimento do mouse desde o último quadro (frame). Note que nem todos os navegadores suportam este recurso. <code>requestPointerLock()</code> permite que você crie experiências que não restrinjam o movimento do mouse ao tamanho da tela, mesmo que este mova repetidamente para o mesmo lado — por exemplo, um ambiente 3D com perspectiva em primeira pessoa.
exitPointerLock__description__0 = A função <code>exitPointerLock()</code> desativa o modo de bloqueio de cursor disparado pela função <code><a href="#/p5/requestPointerLock">requestPointerLock()</code>, permitindo que se volte a utilizar os elementos da interface normalmente.
touches__description__0 = A variável global <code>touches[]</code> armazena uma array com a posição de todos os pontos de toque acontecendo simultaneamente em uma tela <i>touchscreen</i>. Cada elemento da array é um objeto contendo <code>x</code>, <code>y</code> e <code>id</code>. As coordenadas (<code>x</code> e <code>y</code>) são relativas ao ponto <code>(0, 0)</code> da canvas, e a <code>id</code> identifica cada ponto de toque enquanto este se move.
touches__description__1 = A array <code>touches[]</code> não é compatível com os navegadores Safari e Internet Explorer em computadores com <i>touchscreen</i>.
touchStarted__description__0 = A função <code>touchStarted()</code> é chamada a cada vez que um toque é detectado pela tela do dispositivo. Se nenhuma função <code>touchStarted()</code> for definida, a função <code><a href="#/p5/mousePressed">mousePressed()</a><code>, caso definida, será chamada em seu lugar. Os navegadores podem ter diferentes comportamentos padrão associados aos eventos de toque. Para evitar os comportamentos padrão para este evento, adicione <code>return false</code> ao final do método.
touchStarted__params__event = Objeto (opcional): argumento de <i>callback</i> do evento de toque (<code>TouchEvent</code>).
touchMoved__description__0 = A função <code>touchMoved()</code> é chamada a cada vez que um toque detectado pela tela do dispositivo muda de posição. Se nenhuma função <code>touchMoved()</code> for definida, a função <code><a href="#/p5/mouseDragged">mouseDragged()</a><code>, caso definida, será chamada em seu lugar. Os navegadores podem ter diferentes comportamentos padrão associados aos eventos de toque. Para evitar os comportamentos padrão para este evento, adicione <code>return false</code> ao final do método.
touchMoved__params__event = Objeto (opcional): argumento de <i>callback</i> do evento de toque (<code>TouchEvent</code>).
touchEnded__description__0 = A função <code>touchEnded()</code> é chamada toda vez que um toque à tela do dispositivo termina. Se nenhuma função <code> touchEnded()</code> for definida, a função <a href="#/p5/mouseReleased">mouseReleased()</a>, caso esteja definida, será chamada em seu lugar. Os navegadores podem ter diferentes comportamentos padrão associados aos eventos de mouse. Para evitar qualquer comportamento padrão para este evento, adicione <code>return false</code> ao final do método.
touchEnded__params__event = Objeto (opcional): argumento de <i>callback</i> do evento de toque (<code>TouchEvent</code>).
createImage__description__0 = Cria um novo objeto do tipo <a href="#/p5.Image"> p5.Image </a>, que é usado para armazenar imagens . Esta função retorna um novo buffer de pixels para ser utilizado. O tamanho do buffer é definido pelos parâmetros de largura (width)  e altura (height).
createImage__description__1 = O método . <a href="#/p5.Image/pixels"> pixels </a> dá acesso a uma array contendo os valores de todos os pixels na janela de exibição. Esses valores são números. Esta matriz é do tamanho da janela de exibição (incluindo um fator apropriado para a <a href="#/p5/pixelDensity"> pixelDensity </a>)  multiplicado por 4, representando os valores R, G, B, A (nesta ordem) para cada pixel, movendo-se da esquerda para a direita em cada linha e, em seguida, para baixo em cada coluna. Consulte. <a href="#/p5.Image/pixels"> pixels </a> para obter mais informações. Também pode ser mais simples usar <a href="#/p5.Image/set"> set () </a> ou <a href="#/p5.Image/get"> get () </a> .
createImage__description__2 = Antes de acessar os pixels de uma imagem os dados devem ser carregados com a função <a href="#/p5.Image/loadPixels"> loadPixels () </a>. Se os dados da array forem modificados, a função <a href="#/p5.Image/updatePixels"> updatePixels () </a> deve ser executada para atualizar as alterações.
createImage__returns = p5.Image: o objeto do tipo <a href="#/p5.Image"> p5.Image </a>
createImage__params__width = Inteiro: largura em pixels
createImage__params__height = Inteiro: altura em pixels
saveCanvas__description__0 = Salva a canvas atual como uma imagem. O navegador salvará o arquivo imediatamente ou exibirá uma janela de diálogo ao usuário.
saveCanvas__params__selectedCanvas = p5.Element | HTMLCanvasElement (opcional): uma variável que representa um elemento HTML de canvas específico
saveCanvas__params__filename = String (opcional): uma string com o nome do arquivo que será salvo
saveCanvas__params__extension = String (Opcional): uma string contendo a extensão do arquivo que será salvo, valores aceitos são 'jpg' ou 'png'
saveFrames__description__0 = Captura uma sequência de quadros que podem ser usados para criar um filme. Aceita um argumento de callback que pode ser usado quando, por exemplo, caso você deseja enviar os quadros a um servidor onde eles serão armazenados ou convertidos em um filme. Se nenhum argumento de callback for fornecido, por padrão o navegador iniciará o download de todas imagens geradas. Com um argumento de callback fornecido, os dados da imagem não serão salvos, mas sim passados como um argumento para a função de callback como uma array de objetos, o tamanho da array será igual ao número total de quadros. Cada objeto terá três propriedades: imageData - image/octet-stream, filename e extension.
saveFrames__description__1 = Observe que <a href="#/p5.Image/saveFrames"> saveFrames () </a> salva apenas os primeiros 15 quadros de uma animação. Para exportar animações mais longas, sugerimos que procure uma biblioteca como a <a href="https://github.com/spite/ccapture.js/"> ccapture.js </a>.
saveFrames__params__filename = String: nome do arquivo que será salvo
saveFrames__params__extension = String: formato do arquivo que será salvo, os formatos aceitos são 'jpg' ou 'png'
saveFrames__params__duration = Número: tempo em segundos durante o qual os  quadros serão salvos.
saveFrames__params__framerate = Número: Framerate para salvar os quadros.
saveFrames__params__callback = (Opcional) Uma função de callback que será executada para manusear os dados de imagem. Esta função deve aceitar uma array como argumento. <code> função (array) </code>
loadImage__description__0 = Carrega uma imagem a partir de um endereço de arquivo fornecido e cria uma <a href="#/p5.Image"> p5.Image </a> a partir dela.
loadImage__description__1 = Ao usar esta função no <a href="#/p5/setup">setup</a> pode ser que a imagem leve um tempo para carregar e para que esteja pronta para a renderização. Se você quiser garantir que a imagem esteja carregada antes de fazer qualquer coisa com ela, coloque a chamada <a href="#/p5/loadImage"> loadImage () </a> em <a href = "# / p5 / preload" > preload () </a>. Você também pode fornecer uma função de callback para lidar com a imagem quando ela estiver pronta.
loadImage__description__2 = O caminho para a imagem deve ser relativo à localização do arquivo HTML que se refere ao seu sketch. O carregamento de uma imagem a partir de uma URL que se refere a um local remoto pode falhar, devido a bloqueios impostos pelas políticas de segurança do seu navegador.
loadImage__description__3 = Você também pode passar uma string de uma imagem codificada em base64 como alternativa ao caminho do arquivo. Lembre-se de adicionar "data: image / png; base64," na frente da string.
loadImage__returns = p5.Image: objeto do tipo <a href="#/p5.Image"> p5.Image </a>
loadImage__params__path = String: Endereço do arquivo da imagem a ser carregada
loadImage__params__successCallback = function (p5.Image) (Opcional): Função a ser chamada assim que a imagem for carregada. Será passado o <a href="#/p5.Image"> p5.Image </a>.
loadImage__params__failureCallback = Função (Evento) (Opcional): chamada no caso de erro no carregamento da imagem.
image__description__0 = Desenha uma imagem no canvas do p5.js.
image__description__1 = Esta função pode ser usada com um número diferente de parâmetros. O uso mais simples requer apenas três parâmetros: <code>img, x, y </code> — onde (x, y) são a posição da imagem. Mais dois parâmetros podem ser adicionados opcionalmente para especificar a largura (width) e altura(height) da imagem.
image__description__2 = Esta função também pode ser usada com todos os oito parâmetros. Para diferenciar entre todos esses parâmetros, p5.js usa a linguagem de  "retângulo de destino" (na imagem: "destination rectangle") que corresponde a "dx", "dy", e  "imagem de origem" (na imagem: "source image") que corresponde a "sx", "sy" abaixo. Especificar as dimensões da "imagem de origem" pode ser útil quando você deseja exibir uma subseção da imagem de origem em vez de tudo. Aqui está um diagrama para explicar melhor: <img src = "assets / drawImage.png"> </img>
image__params__img = p5.Imagem | p5.Element:  a imagem a ser exibida
image__params__x = Número: a coordenada do eixo x do canto superior esquerdo da imagem
image__params__y = Número: a coordenada do eixo y do canto superior esquerdo da imagem
image__params__width = Número: (opcional) a largura (width) para da imagem
image__params__height = Número: (opcional) a altura (height) da imagem
tint__description__0 = Define o valor de preenchimento das imagens desenhadas com a função <a href="#/p5/image">image ()</a>. Você pode tingir uma imagem ou ajustar sua transparência por meio de um valor alpha.
tint__description__1 = Para aplicar transparência enquanto mantém a cor original da imagem, você pode atribuir um valor alfa à tonalidade branca. Por exemplo, <code>tint (255, 128) </code>tornará a imagem 50% transparente (assumindo o intervalo alfa padrão de 0-255, que pode ser alterado com <a href="#/p5/colorMode"> colorMode () </ a >).
tint__description__2 = O valor do parâmetro cinza deve ser menor ou igual ao valor máximo atual, conforme especificado por <a href="#/p5/colorMode"> colorMode () </a>. O valor máximo padrão é 255.
tint__params__v1 = Number: o valor de vermelho ou de matiz (dependendo do formato de cor sendo utilizado)
tint__params__v2 = Número: valor do verde em modo RGB ou da saturação de cor no modo HSB
tint__params__v3 = Número: valor do azul em modo RGB ou do brilho de cor no modo HSB
tint__params__alpha = Número (opcional): valor de alpha (opacidade) do preenchimento
tint__params__value = String: uma string de cor
tint__params__gray = Número: um valor de cinza
tint__params__values = Número[]: uma array contendo os valores de vermelho, verde, azul e alpha (transparência) da cor final
tint__params__color = <a href="#/p5.Color">p5.Color</a>: a cor da tonalidade a ser aplicada
noTint__description__0 = Remove o valor de preenchimento atual e restaura as cores originais da imagem.
imageMode__description__0 = Define o modo de imagem. Modifica o local de onde as imagens são desenhadas, alterando a maneira como os parâmetros dados a <a href="#/p5/image"> image () </a> são interpretados. O modo padrão é <code>imageMode (CORNER)</code>, que interpreta o segundo e o terceiro parâmetros de <a href="#/p5/image"> image () </a> como o canto superior esquerdo da imagem. Se dois parâmetros adicionais forem especificados, eles serão usados para definir a largura (width) e a altura (height) da imagem.
imageMode__description__1 = <code>imageMode (CORNERS) </code> interpreta o segundo e terceiro parâmetros de <a href="#/p5/image"> image () </a> como a localização de um canto, e o quarto e quinto parâmetros como o canto oposto.
imageMode__description__2 = <code>imageMode (CENTER) <code> interpreta o segundo e terceiro parâmetros de <a href="#/p5/image"> image () </a> como o ponto central da imagem. Se dois parâmetros adicionais forem especificados, eles serão usados para definir a largura e a altura da imagem.
imageMode__params__mode = Constante: CORNER, CORNERS ou CENTER
pixels__description__0 = <a href ='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8ClampedArray'> Uint8ClampedArray </a> contendo os valores de todos os pixels na tela de exibição. Os valores dos pixels são expressos em números. A array tem quatro vezes o tamanho da tela de exibição (incluindo um fator para densidade de pixels), representando os valores R, G, B e A para cada pixel. A array é preenchida da esquerda para a direita em linhas e depois para baixo em colunas. Telas de retina e outras telas de alta densidade também têm matrizes maiores de pixels [] (devido ao coeficiente <code>pixelDensity ^ 2</code>). Se uma imagem em uma tela comum tiver 100x100 pixels e seu arranjo for 40.000, então na Retina o arranjo seria 160.000.
pixels__description__1 = Os primeiros 4 valores na array (ou seja, índice 0-3) são os valores R, G, B, A no pixel (0,0) , os próximos 4 valores ( ou seja, o índice 4 - 7) contém os valores R, G, B, A no pixel (1,0) . O exemplo abaixo mostra como definir o valor do pixel em uma coordenada específica (x, y). <br> <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) { "{" } · for (let j = 0; j < d; j++) { "{" } · // loop over · index = 4 * ((y * d + j) * width * d + (x * d + i)); · pixels[index] = r; · pixels[index+1] = g; · pixels[index+2] = b; · pixels[index+3] = a; · { "}" } { "}" }</code></pre>
pixels__description__2 = Este exemplo parece um pouco complicado, mas é flexível o suficiente para usar qualquer pixelDensity. Observe que <a href="#/p5/set">set()</a> define automaticamente todos os valores na array de <code>pixels []</code> para um determinado (x, y) em qualquer pixelDensity. No entanto, modificar uma matriz várias vezes pode reduzir o desempenho.
pixels__description__3 = Antes de acessar esta array, os dados devem ser carregados com a função <a href="#/p5/loadPixels"> loadPixels () </a>. Depois que os dados da array forem modificados, a função <a href="#/p5/updatePixels"> updatePixels() </a> deve ser executada para atualizar as alterações.
pixels__description__4 = Observe que esta referência não é uma array JavaScript padrão, portanto, funções JavaScript padrão como <a href="#/p5/slice">slice()</a> ou <a href="#/p5/arrayCopy">arrayCopy()</a>não funcionarão.
blend__description__0 = Copia áreas de pixels de uma imagem para outra usando um modo de mesclagem especificado pelo usuário.
blend__params__srcImage = p5.Imagem: imagem de origem
blend__params__sx = Inteiro: valor da coordenada x do canto superior esquerdo da área original
blend__params__sy = Inteiro: valor da coordenada y do canto superior esquerdo da área original
blend__params__sw = Inteiro: largura (width) da imagem de origem
blend__params__sh = Inteiro: altura (height) da imagem de origem
blend__params__dx = Inteiro: valor da coordenada y do canto superior esquerdo da área de destino
blend__params__dy = Inteiro: valor da coordenada y do canto superior esquerdo da área de destino
blend__params__dw = Inteiro: largura (width) da imagem de destino
blend__params__dh = Inteiro: altura (height) da imagem de destino
blend__params__blendMode = Constante: o modo de mesclagem, podem ser: BLEND, DARKEST, LIGHTEST, DIFFERENCE, MULTIPLY, EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT, SOFT_LIGHT, DODGE, BURN, ADD ou NORMAL.
copy__description__0 = Copia os pixels de uma área da canvas para outra. Esta função pode ser utilizada como um método de imagem, neste caso deve ser definida uma imagem de origem através do parâmetro <code>srcImg </code>. Neste caso, uma área de pixels da uma imagem de origem será copiada para uma área de outra imagem especificada pelo usuário. Se as áreas de origem e destino da cópia não forem do mesmo tamanho, a área de pixel de origem será redimensionada automaticamente para se ajustar ao tamanho da área de destino.
copy__params__srcImage = p5.Image | p5.Element: imagem de origem
copy__params__sx = Inteiro: valor da coordenada x do canto superior esquerdo da área de origem
copy__params__sy = Inteiro: valor da coordenada y do canto superior esquerdo da área de origem
copy__params__sw = Inteiro: largura (width) da imagem de origem
copy__params__sh = Inteiro: altura (height) da imagem de origem
copy__params__dx = Inteiro: valor da coordenada x do canto superior esquerdo da área de destino
copy__params__dy = Inteiro: valor da coordenada y do canto superior esquerdo da área de destino
copy__params__dw = Inteiro: largura (width) da imagem de destino
copy__params__dh = Inteiro: altura (height) da imagem de destino
filter__description__0 = Aplica um filtro à Canvas. As opções predefinidas são:
filter__description__1 = THRESHOLD Converte a imagem em pixels preto e branco, dependendo se eles estão acima ou abaixo do limite definido pelo parâmetro de (level) nível. O parâmetro deve estar entre 0 (preto) e 1 (branco). Se nenhum valor for especificado, o valor 0,5 é definido por padrão.
filter__description__2 = GRAY Converte as cores da imagem em tons de cinza equivalentes. Nenhum parâmetro é usado.
filter__description__3 = OPAQUE Define o canal alpha como totalmente opaco. Nenhum parâmetro é usado.
filter__description__4 = INVERT Define cada pixel para o seu valor inverso. Nenhum parâmetro é usado.
filter__description__5 = POSTERIZE Limita cada canal da imagem ao número de cores especificado como parâmetro. Os valores do parâmetro podem ser definidos entre 2 e 255, mas os resultados são mais perceptíveis nas faixas inferiores.
filter__description__6 = BLUR aplica um desfoque gaussiano à imagem. O parâmetro nível define o valor do raio do desfoque desvio, ou quantos pixels na tela se misturam, portanto, um valor maior criará mais desfoque. Se nenhum parâmetro for usado o valor do raio de desfoque será 1, por definição.
filter__description__7 = ERODE Reduz as áreas claras. Nenhum parâmetro é usado.
filter__description__8 = DILATE Aumenta as áreas claras. Nenhum parâmetro é usado.
filter__description__9 = o método <code>filter()</code> não funciona no modo WEBGL. Um efeito semelhante pode ser obtido no modo WEBGL usando shaders personalizados. Adam Ferriss escreveu uma <a href="https://github.com/aferriss/p5jsShaderExamples" target='_blank'> seleção de exemplos de shaders </a> que contém muitos dos efeitos presentes nos exemplos de filtro.
filter__params__filterType = THRESHOLD, GRAY, OPAQUE, INVERT, · POSTERIZE, BLUR, ERODE, DILATE ou BLUR. Veja Filters.js para documentação de cada filtro disponível.
filter__params__filterParam = Número (opcional): este parâmetro varia de acordo com o filtro, veja a descrição acima.
get__description__0 = Obtém uma área de pixels especificada ou pixel único do Canvas.
get__description__1 = Retorna uma matriz de valores [R, G, B, A] para um pixel específico ou uma área de uma imagem. Se nenhum parâmetro for especificado, a imagem inteira será retornada. Você pode obter as coordenadas de um pixel específico por meio dos parâmetros x e y. Uma área da janela de exibição também pode ser especificada por meio dos parâmetros adicionais w, h. Ao buscar uma imagem, os parâmetros x e y  definem as coordenadas do canto superior esquerdo, independentemente do <a href="#/p5/imageMode">imageMode()</a> atual.
get__description__2 = Obter a cor de um único pixel com a função <code>get (x, y)</code> é uma maneira fácil, mas não é tão rápida quanto obter os dados diretamente da array<a href="#/p5/pixels"> pixels[]</a>. Você pode obter o mesmo resultado de <code>get (x, y)</code> utilizando a array <a href="#/p5/pixels">pixels[]</a> e o parâmetro de densidade de pixels d, como no exemplo a seguir:  <pre><code class="language-javascript">let x, y, d; // set these to the coordinates let off = (y * width + x) * d * 4; let components = [ · pixels[off], · pixels[off + 1], · pixels[off + 2], · pixels[off + 3] ]; print(components);</code></pre>
get__description__3 = Consulte <a href="#/p5/pixels"> pixels[] </a> para obter mais informações.
get__description__4 = Se você deseja extrair uma array de cores ou uma subimagem de um objeto do tipo p5.Image, dê uma olhada em <a href="#/p5.Image/get"> p5.Image.get() </a>
get__returns = p5.Image: o retângulo <a href="#/p5.Image"> p5.Image </a>
get__params__x = Número: coordenada do pixel relativo ao eixo X
get__params__y = Número: coordenada do pixel relativo ao eixo Y
get__params__w = Número: largura (width)
get__params__h = Número: altura (height)
loadPixels__description__0 = Esta função carrega os dados de pixel da janela de exibição na array <a href="#/p5/pixels"> pixels[] </a>. Esta função sempre deve ser chamada antes de ler ou gravar na array <a href="#/p5/pixels"> pixels[] </a>. Observe que somente ocorrerão as alterações feitas com <a href="#/p5/set"> set() </a> ou manipulação direta de <a href="#/p5/pixels"> pixels[] </a>.
set__description__0 = Altera a cor de qualquer pixel ou grava uma imagem diretamente na janela de exibição. Os parâmetros "x" e "y" especificam o pixel a ser alterado. O parâmetro "c" especifica o valor da cor, pode ser um objeto <a href="#/p5.Color"> p5.Color </a>, uma matriz de pixels [R, G, B, A] ou um valor único de escala de cinza. Ao definir uma imagem, os parâmetros "x" e "y" definem as coordenadas para o canto superior esquerdo da imagem, independentemente do atual <a href="#/p5/imageMode"> imageMode() </a>.
set__description__1 = Depois de usar <a href="#/p5/set"> set() </a>, você deve chamar <a href="#/p5/updatePixels"> updatePixels() </a> para que suas alterações apareçam. A função <a href="#/p5/updatePixels"> updatePixels() </a> deve ser chamada assim que todos os pixels forem definidos e também antes de chamar a função <a href="#/p5/get"> get() </a> ou desenhar a imagem.
set__description__2 = Definir a cor de um único pixel com <code>set (x, y)</code> é simples, mas não tão rápido quanto colocar os dados diretamente na array <a href="#/p5/pixels"> pixels[] </a>. Definir os valores de <a href="#/p5/pixels"> pixels[] </a> diretamente pode ser complicado ao trabalhar com uma tela de retina, mas terá um desempenho melhor se muitos pixels precisam ser definidos diretamente em cada loop. Consulte <a href="#/p5/pixels"> pixels[] </a> para obter mais informações.
set__params__x = Número: coordenada do pixel relativo ao eixo X
set__params__y = Número: coordenada do pixel relativo ao eixo Y
set__params__c = Número | Número[] | Objeto: insira um valor de escala de cinza | uma matriz de pixels | um objeto <a href="#/p5.Color"> p5.Color </a> | uma <a href="#/p5.Image"> p5.Image </a> para copiar
updatePixels__description__0 = Atualiza a janela de exibição com os dados contidos na array <a href="#/p5/pixels"> pixels[] </a>. Use em conjunto com a função <a href="#/p5/loadPixels"> loadPixels() </a>. Se você estiver apenas lendo pixels da array, não há necessidade de chamar <a href="#/p5/updatePixels"> updatePixels() </a> - a atualização é necessária apenas para aplicar as alterações. A função <a href="#/p5/updatePixels"> updatePixels() </a> deve ser chamada sempre que a array de pixels for manipulada ou a função <a href="#/p5/set"> set() </a> for chamada. Apenas alterações feitas com <a href="#/p5/set"> set () </a> ou alterações diretas em <a href="#/p5/pixels"> pixels [] </a> ocorrerão.
updatePixels__params__x = Número: (opcional) coordenada x do canto superior esquerdo da área a ser atualizada
updatePixels__params__y = Número: (opcional) coordenada y do canto superior esquerdo da área a ser atualizada
updatePixels__params__w = Número (opcional): largura da região a ser atualizada
updatePixels__params__h = Número (opcional): altura da região a ser atualizada
loadJSON__description__0 = Carrega um arquivo JSON de um arquivo ou URL e retorna um Object. Observe que, mesmo se o arquivo JSON contiver um Array, um Object será retornado com os números de índice como keys.
loadJSON__description__1 = Este método é assíncrono, o que significa que pode não terminar antes que a próxima linha em seu esboço seja executada. JSONP é suportado por meio de um polyfill e você pode passar como o segundo argumento um objeto com definições do retorno de chamada json seguindo a sintaxe especificada <a href="https://github.com/camsong/ fetch-jsonp"> aqui </ a>.
loadJSON__description__2 = Este método é adequado para buscar arquivos de até 64 MB.
loadJSON__returns = Object | Array: dados do JSON
loadJSON__params__path = String: nome do arquivo ou url para carregar
loadJSON__params__jsonpOptions = Object: (opcional) objeto de opções para configurações relacionadas ao jsonp
loadJSON__params__datatype = String: (Opcional) "json" ou "jsonp"
loadJSON__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/loadJSON"> loadJSON () </a>, os dados são passados como primeiro argumento
loadJSON__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
loadStrings__description__0 = Lê o conteúdo de um arquivo e cria uma array String de suas linhas individuais. Se o nome do arquivo for usado como parâmetro, como no exemplo acima, o arquivo deve estar localizado no diretório / pasta de esboço.
loadStrings__description__1 = Alternativamente, o arquivo pode ser carregado de qualquer lugar no computador local usando um caminho absoluto (algo que começa com / no Unix e Linux, ou uma letra de unidade no Windows), ou o parâmetro do nome do arquivo pode ser uma URL para um arquivo encontrado em um rede.
loadStrings__description__2 = Este método é assíncrono, o que significa que não pode terminar antes que a próxima linha em seu esboço seja executada.
loadStrings__description__3 = Este método é adequado para buscar arquivos de até 64 MB.
loadStrings__returns = String[]: Array de Strings
loadStrings__params__filename = String: nome do arquivo ou da url para carregar
loadStrings__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/loadStrings"> loadStrings () </a>, a Array é passada como primeiro argumento
loadStrings__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
loadTable__description__0 = Lê o conteúdo de um arquivo ou URL e cria um objeto <a href="#/p5.Table"> p5.Table </a> com seus valores. Se um arquivo for especificado, ele deve estar localizado na pasta "data" do esboço. O parâmetro filename também pode ser um URL para um arquivo online. Por padrão, o arquivo é considerado separado por vírgulas (no formato CSV). A tabela só procura uma linha de cabeçalho se a opção 'cabeçalho' estiver incluída.
loadTable__description__1 = Este método é assíncrono, o que significa que não pode terminar antes que a próxima linha em seu esboço seja executada. Chamar <a href="#/p5/loadTable"> loadTable () </a> dentro de <a href="#/p5/preload"> preload () </a> garante a conclusão da operação antes de <a href = "# / p5 / setup"> setup () </a> e <a href="#/p5/draw"> draw () </a> são chamados. Fora de <a href="#/p5/preload"> preload () </a>, você pode fornecer uma função de retorno de chamada para manipular o objeto:
loadTable__description__2 = Todos os arquivos carregados e salvos usam a codificação UTF-8. Este método é adequado para buscar arquivos de até 64 MB.
loadTable__returns = Object: objeto <a href="#/p5.Table"> Tabela </a> contendo dados
loadTable__params__filename = String: nome do arquivo ou da URL para carregar
loadTable__params__extension = String: (Opcional) analisa a tabela por valores separados por vírgula "csv", valores separados por ponto e vírgula "ssv" ou valores separados por tabulação "tsv"
loadTable__params__header = String: (Opcional) "header" para indicar que a tabela tem uma linha de cabeçalho
loadTable__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/loadTable"> loadTable () </a>. Em caso de sucesso, o objeto <a href="#/p5.Table"> Tabela </a> é passado como o primeiro argumento.
loadTable__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
loadXML__description__0 = Lê o conteúdo de um arquivo e cria um objeto XML com seus valores. Se o nome do arquivo for usado como parâmetro, como no exemplo acima, o arquivo deve estar localizado no diretório / pasta de sketch.
loadXML__description__1 = Alternativamente, o arquivo pode ser carregado de qualquer lugar no computador local usando um caminho absoluto (algo que começa com / no Unix e Linux, ou uma letra de unidade no Windows), ou o parâmetro do nome do arquivo pode ser uma URL para um arquivo encontrado em uma rede.
loadXML__description__2 = Este método é assíncrono, o que significa que não pode terminar antes que a próxima linha em seu esboço seja executada. Chamar <a href="#/p5/loadXML"> loadXML () </a> dentro de <a href="#/p5/preload"> preload () </a> garante a conclusão da operação antes que <a href = "# / p5 / setup"> setup () </a> e <a href="#/p5/draw"> draw () </a> sejam chamados.
loadXML__description__3 = Fora de <a href="#/p5/preload"> preload () </a>, você pode fornecer uma função de retorno de chamada para manipular o objeto.
loadXML__description__4 = Este método é adequado para buscar arquivos de até 64 MB.
loadXML__returns = Object: objeto XML contendo dados
loadXML__params__filename = String: nome do arquivo ou da URL para carregar
loadXML__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/loadXML"> loadXML () </a>, o objeto XML é passado como primeiro argumento
loadXML__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
loadBytes__description__0 = Este método é adequado para buscar arquivos de até 64 MB.
loadBytes__returns = Object: um objeto cuja propriedade 'bytes' será carregado no buffer
loadBytes__params__file = String: nome do arquivo ou da URL para carregar
loadBytes__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/loadBytes"> loadBytes () </a>
loadBytes__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro
httpGet__description__0 = Método para executar uma solicitação HTTP GET. Se o tipo de dados não for especificado, o p5 tentará adivinhar com base na URL, assumindo como padrão o texto. Isso é equivalente a chamar <code> httpDo (path, 'GET') </code>. O tipo de dados 'binário' retornará um objeto Blob e o tipo de dados 'arrayBuffer' retornará uma ArrayBuffer que pode ser usado para inicializar arrays digitadas (como Uint8Array).
httpGet__returns = Promise: uma "promessa" que se resolve com os dados quando a operação é concluída com sucesso ou rejeita com o erro depois que ocorre.
httpGet__params__path = String: nome do arquivo ou da url para carregar
httpGet__params__datatype = String: (Opcional) "json", "jsonp", "binary", "arrayBuffer", "xml" ou "text"
httpGet__params__data = Object | Boolean: (Opcional) dados de parâmetros enviados com solicitação
httpGet__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/httpGet"> httpGet () </a>, os dados são passados como primeiro argumento
httpGet__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
httpPost__description__0 = Método para executar uma solicitação HTTP POST. Se o tipo de dados não for especificado, o p5 tentará adivinhar com base na URL, assumindo como padrão o texto. Isso é equivalente a chamar <code> httpDo (path, 'POST') </code>.
httpPost__returns = Promise: uma "promessa" que se resolve com os dados quando a operação é concluída com sucesso ou rejeita com o erro depois que ocorre.
httpPost__params__path = String: nome do arquivo ou da url para carregar
httpPost__params__datatype = String: (Opcional) "json", "jsonp", "xml" ou "text". Se omitido, a <a href="#/p5/httpPost"> httpPost () </a> irá tentar adivinhar.
httpPost__params__data = Object | Boolean: (Opcional) dados de parâmetros enviados com solicitação
httpPost__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/httpPost"> httpPost () </a>, os dados são passados como primeiro argumento
httpPost__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
httpDo__description__0 = xmlMétodo para executar uma solicitação tipo HTTP. Se o tipo de dados não for especificado, o p5 tentará adivinhar com base na URL, assumindo como padrão o texto. Para um uso mais avançado, você também pode passar o caminho como o primeiro argumento e um object como o segundo argumento, a assinatura segue aquela especificada na especificação da Fetch API. Este método é adequado para buscar arquivos de até 64 MB quando "GET" é usado.
httpDo__returns = Promise: uma "promessa" que se resolve com os dados quando a operação é concluída com sucesso ou rejeita com o erro depois que ocorre.
httpDo__params__path = String: nome do arquivo ou da url para carregar
httpDo__params__method = String: (Opcional) "GET", "POST" ou "PUT", o padrão é "GET"
httpDo__params__datatype = String: (Opcional) "json", "jsonp", "xml" ou "text"
httpDo__params__data = Object: (Opcional) dados de parâmetros transmitidos enviados com solicitação
httpDo__params__callback = Função: (Opcional) função a ser executada após a conclusão de <a href="#/p5/httpGet"> httpGet () </a>, os dados são passados como primeiro argumento
httpDo__params__errorCallback = Função: (Opcional) função a ser executada se houver um erro, a resposta é passada como primeiro argumento
httpDo__params__options = Object: Solicita as opções de objeto conforme documentado na <a href="https://developer.mozilla.org/en/docs/Web/API/Fetch_API"> referência </a> da "fetch" API
createWriter__returns = p5.PrintWriter:
createWriter__params__name = String: nome do arquivo a ser criado
createWriter__params__extension = String: (Opcional) uma string com o nome do arquivo que será salvo
save__description__0 = Salva um determinado elemento (imagem, texto, json, csv, wav ou html) no computador cliente. O primeiro parâmetro pode ser uma indicação do elemento que queremos salvar. O elemento pode ser <a href="#/p5.Element"> p5.Element </a>, uma Array de Strings, uma Array de JSON, um objeto JSON, um <a href = "# / p5. Tabela "> p5.Table </a>, um <a href="#/p5.Image"> p5.Image </a> ou um p5.SoundFile (requer p5.sound). O segundo parâmetro é um nome de arquivo (incluindo a extensão). O terceiro parâmetro é para opções específicas para este tipo de objeto. Este método salvará um arquivo que se encaixa nos parâmetros fornecidos. Se for chamado sem especificar um elemento, por padrão, ele salvará toda a tela como um arquivo de imagem. Você pode, opcionalmente, especificar um nome de arquivo como o primeiro parâmetro nesse caso. <strong> Observe que não é recomendado chamar esse método dentro do draw, pois ele abrirá uma nova caixa de diálogo para salvar a cada renderização. </strong>
save__params__objectOrFilename = Object | String: (Opcional) Se o nome do arquivo for fornecido, salvará a tela como uma imagem com extensão png ou jpg, dependendo do nome do arquivo. Se o objeto for fornecido, o salvará dependendo do objeto e do nome do arquivo (veja os exemplos acima).
save__params__filename = String: (Opcional) Se um objeto for fornecido como o primeiro parâmetro, o segundo parâmetro indica o nome do arquivo e deve incluir uma extensão de arquivo apropriada (consulte os exemplos acima).
save__params__options = Boolean | String: (Opcional) As opções adicionais dependem do tipo de arquivo. Por exemplo, ao salvar JSON, <code> true </code> indica que a saída será otimizada para o tamanho do arquivo, em vez de legibilidade.
saveJSON__description__0 = Grava o conteúdo de um objeto Array ou JSON em um arquivo .json. O processo de salvamento do arquivo e a localização do arquivo salvo variam entre os navegadores da web.
saveJSON__params__json = Array | Object
saveJSON__params__filename = String
saveJSON__params__optimize = Boolean: (Opcional) Se true (verdadeiro), remove quebras de linha e espaços do arquivo de saída para otimizar o tamanho do arquivo (mas não a legibilidade).
saveStrings__description__0 = Grava uma array de Strings em um arquivo de texto, uma linha por String. O processo de salvamento do arquivo e a localização do arquivo salvo variam entre os navegadores da web.
saveStrings__params__list = String []: string array a ser escrito
saveStrings__params__filename = String: nome do arquivo a ser gerado
saveStrings__params__extension = String: (Opcional) extensão do nome do arquivo
saveStrings__params__isCRLF = Boolean: (Opcional) se true (verdadeiro), altere a quebra de linha para CRLF
saveTable__description__0 = Grava o conteúdo de um objeto <a href="#/p5.Table"> Table </a> em um arquivo. O padrão é um arquivo de texto com valores separados por vírgula ('csv'), mas também pode usar separação por tabulação ('tsv') ou gerar uma tabela HTML ('html'). O processo de salvamento do arquivo e a localização do arquivo salvo variam entre os navegadores da web.
saveTable__params__Table = p5.Table: o objeto <a href="#/p5.Table"> Table </a> para salvar em um arquivo
saveTable__params__filename = String: o nome do arquivo no qual a Table deve ser salva
saveTable__params__options = String: (Opcional) pode ser "tsv", "csv" ou "html"
abs__description__0 = Calcula o valor absoluto (magnitude) de um número. Corresponde à função <code>Math.abs()</code>. O valor absoluto de um número é sempre positivo.
abs__returns = Número: valor absoluto do número em questão.
abs__params__n = Número: número a ser calculado o valor absoluto.
ceil__description__0 = Calcula o número inteiro mais próximo que seja maior ou igual ao valor passado como parâmetro da função, ou seja, arredonda o número para cima. Corresponde a <code>Math.ceil()</code>. Por exemplo, <code>ceil(9.03)</code> retorna o valor <code>10</code>.
ceil__returns = Número: número inteiro correspondendo ao valor passado à função arredondado para cima.
ceil__params__n = Número: número a ser arredondado.
constrain__description__0 = Limita o valor passado à função entre um valor mínimo e um máximo.
constrain__returns = Número: o valor do parâmetro, restrito entre os limites definidos.
constrain__params__n = Número: valor a ser restringido.
constrain__params__low = Número: valor limite mínimo.
constrain__params__high = Número: valor limite máximo.
dist__description__0 = Calcula a distância entre dois pontos, tanto em duas quanto em três dimensões. Se você estiver buscando a distância entre dois vetores, veja a função <code><a herf="#/p5.Vector/dist">dist()</a></code>.
dist__returns = Número: distância entre dois pontos.
dist__params__x1 = Number: x-coordinate do primeiro ponto
dist__params__y1 = Number: y-coordinate do primeiro ponto
dist__params__x2 = Number: x-coordinate do segundo ponto
dist__params__y2 = Number: y-coordinate do segundo ponto
dist__params__z1 = Number: z-coordinate do primeiro ponto
dist__params__z2 = Number: z-coordinate do segundo ponto
exp__description__0 = Retorna o número de Euler — <em>e</em> (2.71828...) elevado à potência do parâmetro <code>n</code>. Corresponde à função <code>Math.exp()</code>.
exp__returns = Número: número de Euler (<em>e</em>) elevado à potência de <code>n</code>.
exp__params__n = Número: expoente para elevar o número de Euler.
floor__description__0 = Calcula o número inteiro mais próximo que seja menor ou igual ao valor passado como parâmetro da função, ou seja, arredonda o número para baixo. Corresponde a <code>Math.floor()</code>. Por exemplo, <code>floor(10.8)</code> retorna o valor <code>10</code>.
floor__returns = Número: número inteiro correspondendo ao valor passado à função arredondado para baixo.
floor__params__n = Número: número a ser arredondado.
lerp__description__0 = Realiza uma interpolação linear, ou seja, calcula um número entre dois números, de acordo com um incremento específico. O parâmetro <code>amt</code> é a quantia a interpolar entre os dois números, onde <code>0.0<c/ode> é igual ao primeiro valor, <code>0.1</code> é muito próximo ao primeiro valor, <code>0.5</code> é a média entre os dois, e <code>1.0</code> é igual ao segundo valor. Se o valor de <code>amt</code> for menor que 0 ou maior que 1, o número será calculado proporcionalmente. A função <code>lerp()</code> é útil para criar movimento dentro de uma linha reta, e para desenhar linhas pontilhadas.
lerp__returns = Número: o valor resultante da interpolação.
lerp__params__start = Número: primeiro valor a ser interpolado.
lerp__params__stop = Número: segundo valor a ser interpolado.
lerp__params__amt = Número: incremento da interpolação.
randomSeed__description__0 = Configura o valor da semente da função <code><a href="#/p5/random">random()</a></code>.
randomSeed__description__1 =
    Por padrão, a função <code><a href="#/p5/random">random()</a></code> produz resultados diferentes a cada vez que o programa é executado. Configure uma semente padrão para ter sempre a mesma ordem de números pseudo-aleatórios a cada vez que executa seu sketch.
    Para compreender mais sobre a semente do gerador de números aleatórios, <a href="https://www.ime.usp.br/~pf/algoritmos//aulas/random.html#seed" target="_blank" rel="noopener noreferrer">veja este material do Instituto de Matemática e Estatística da Universidade de São Paulo</a>.
randomSeed__params__seed = Número: o valor da semente.
textAlign__description__0 = Define o alinhamento atual para o texto que será desenhado. Aceita dois argumentos: horizAlign (LEFT, CENTER ou RIGHT) e vertAlign (TOP, BOTTOM, CENTER ou BASELINE).
textAlign__description__1 = O parâmetro horizAlign se refere ao parâmetro x da função <a href="#/p5/text"> text() </a>, enquanto o parâmetro vertAlign se refere ao parâmetro y.
textAlign__description__2 = Portanto, se você escrever textAlign (LEFT), estará alinhando a borda esquerda do seu texto com o valor x fornecido em <a href="#/p5/text"> text() </a>. Se você escrever textAlign (RIGHT, TOP), estará alinhando a borda direita do texto com o valor x e a parte superior da borda do texto com o valor y.
textAlign__params__horizAlign = Constante: alinhamento horizontal, aceita os valores LEFT,  CENTER, ou RIGHT
textAlign__params__vertAlign = Constante (opcional): alinhamento vertical, aceita os valores TOP, BOTTOM, CENTER, ou BASELINE.
textLeading__description__0 = Define/obtém o espaçamento, em pixels, entre as linhas de texto. Esta configuração será usada em todas as chamadas subsequentes para a função <a href="#/p5/text"> text() </a>.
textLeading__params__leading = Número: o tamanho em pixels para espaçamento entre linhas
textSize__description__0 = Define/obtém o tamanho da fonte atual. Este tamanho será usado em todas as chamadas subsequentes para a função <a href="#/p5/text"> text() </a>. O tamanho da fonte é medido em pixels.
textSize__params__theSize = Número: o tamanho das letras em unidades de pixels
textStyle__description__0 = Define/obtém o estilo do texto das fontes do sistema para NORMAL, ITALIC, BOLD ou BOLDITALIC. Nota: pode ser anulada  pelo estilo CSS. Para fontes que não são do sistema (opentype, truetype, etc.), carregue as fontes estilizadas com a função<a href="#/p5/loadFont"> loadFont() </a>.
textStyle__params__theStyle = Constante: estilo do texto, NORMAL, ITALIC, BOLD ou BOLDITALIC
textWidth__description__0 = Calcula e retorna a largura de qualquer caractere ou string de texto.
textWidth__returns = Número: a largura calculada
textWidth__params__theText = String: a string de caracteres a medir
textAscent__description__0 = Retorna ao valor do ascendente da fonte atual em seu tamanho atual. O ascendente é a altura máxima do corpo da fonte. O valor retornado pela função representa a distância em pixels da linha de base até o ponto mais alto do caractere mais alto da fonte.
textAscent__returns = Número:
textDescent__description__0 = Retorna ao valor da linha descendente da fonte atual em seu tamanho atual. O descendente é a linha que acompanha quão abaixo da linha de base os caracteres alcançam (por exemplo caracteres como  g, j, p e q) . O valor retornado pela função representa a distância em pixels da linha de base até o ponto mais baixo que a fonte se estende.
textDescent__returns = Número:
textWrap__description__0 = Especifica como as linhas de texto são quebradas em uma caixa de texto. Isso requer uma largura máxima definida na área de texto, especificada em <a href="#/p5/text"> text() </a> como parâmetro <code> x2 </code>.
textWrap__description__1 = O estilo de quebra de palavra WORD somente quebra linhas em espaços. Uma única string sem espaços que exceda os limites da tela ou área de texto não será truncada e irá extravasar a área desejada, desaparecendo na borda da tela.
textWrap__description__2 = O estilo de quebra de linha CHAR quebra as linhas sempre que necessário para permanecer dentro da caixa de texto.
textWrap__description__3 = WORD é o estilo de quebra de linha padrão e ambos os estilos ainda quebrarão linhas em qualquer quebra de linha (<code> \ n </code>) especificada no texto original. O parâmetro max-height da área de texto (<code> y2 </code>) também se aplica ao texto quebrado em ambos os estilos, linhas de texto que não cabem na área de texto não serão desenhadas na tela.
textWrap__returns = String: wrapStyle
textWrap__params__wrapStyle = Constante: estilo de quebra automática de texto, WORD ou CHAR
loadFont__description__0 = Carrega um arquivo de fonte opentype (.otf, .ttf) de um arquivo ou URL e retorna um objeto P5.Font. Este método é assíncrono, o que significa que pode não terminar antes que a próxima linha em seu esboço seja executada.
loadFont__description__1 = O caminho para a fonte deve ser relativo à localização do arquivo HTML que se refere ao seu sketch. O carregamento de uma fonte a partir de uma URL que se refere a um local remoto pode falhar, devido a bloqueios impostos pelas políticas de segurança do seu navegador.
loadFont__returns = p5.Font: objeto do tipo <a href="#/p5.Font"> p5.Font </a>
loadFont__params__path = String: nome do arquivo ou url para ser carregada
loadFont__params__callback = Função (opcional): função a ser executada após a conclusão de <a href="#/p5/loadFont"> loadFont() </a>
loadFont__params__onError = Função: (opcional) função a ser executada se ocorrer um erro durante o carregamento
text__description__0 = Desenha texto na tela. Exibe as informações especificadas no primeiro parâmetro na tela na posição especificada pelos parâmetros adicionais. Uma fonte padrão será usada a menos que uma fonte seja definida com a função <a href="#/p5/textFont"> textFont() </a> e um tamanho padrão será usado a menos que seja definido com <a href = "# / p5 / textSize"> textSize() </a>. Propriedades como cor do texto e contorno podem ser alteradas com a funções<a href="#/p5/fill"> fill() </a>, <a href="#/p5/stroke"> stroke() </a> e <a href="#/p5/strokeWeight"> strokeWeight() </a>.
text__description__1 = O texto é exibido em relação à função <a href="#/p5/textAlign"> textAlign() </a>, que oferece a opção de desenhar à esquerda, à direita e ao centro das coordenadas x e y.
text__description__2 = Os parâmetros <code>x2</code>e <code>y2</code> definem uma caixa de texto retangular dentro da qual o texto será exibido. Quando esses parâmetros são especificados, eles são interpretados com base na configuração atual de <a href="#/p5/rectMode"> rectMode () </a>. O texto que não se ajusta completamente ao retângulo especificado não será desenhado na tela. Se <code>x2</code> e <code>y2</code> não forem especificados, o alinhamento da linha de base será o padrão, o que significa que o texto será desenhado para cima a partir das coordenadas x e y. Note que os parâmetros x2 e y2 só podem ser usados quando o primeiro parâmetro da função <code>text() </code> é uma string.
text__description__3 = <b> WEBGL </b>: Apenas fontes opentype / truetype são suportadas. Você deve carregar uma fonte usando o método <a href="#/p5/loadFont"> loadFont() </a> (veja o exemplo acima). A função <a href="#/p5/stroke"> stroke() </a> atualmente não tem efeito no modo WEBGL.
text__params__str = String | Objeto | Array | Número | Booleano: os símbolos alfanuméricos a serem exibidos
text__params__x = Número: coordenada x do texto
text__params__y = Número: coordenada y do texto
text__params__x2 = Número (opcional): por padrão, a largura da caixa de texto, consulte <a href="#/p5/rectMode"> rectMode() </a> para obter mais informações
text__params__y2 = Número (opcional): por padrão, a altura da caixa de texto, consulte <a href="#/p5/rectMode"> rectMode() </a> para obter mais informações
textFont__description__0 = Define a fonte a ser utilizada na função <a href="#/p5/text"> text() </a>. Se textFont() for chamada sem nenhum argumento, ela retornará a fonte atual se uma já tiver sido definida. Caso contrário, ele retornará o nome da fonte padrão como uma string.
textFont__description__1 = <b> WEBGL </b>: Apenas fontes carregadas via <a href="#/p5/loadFont"> loadFont() </a> são suportadas.
textFont__returns = Objeto: a fonte atual / Objeto do tipo p5.Font
textFont__params__font = Object | String: uma fonte carregada via <a href="#/p5/loadFont"> loadFont() </a>, ou uma String representando uma <a href="https://mzl.la/2dOw8WD"> web fonte segura </a> (uma fonte geralmente disponível em todos os sistemas)
textFont__params__size = Número (opcional): o tamanho da fonte em pixels
append__description__0 = Adiciona um valor ao final de uma array. Aumenta o comprimento da array em um. É equivalente a  Array.push().
append__returns = Array: a array a ser adicionada a
append__params__array = Array: Array a ser adicionada
append__params__value = Qualquer: qualquer valor a ser adicionado na array
arrayCopy__description__0 = Copia uma array (ou parte de uma array) para outra array. A array src é copiada para a array dst, começando na posição especificada por srcPosition e na posição especificada por dstPosition. O número de elementos a serem copiados é determinado pelo comprimento. Observe que a cópia dos valores sobrescreve os valores existentes na matriz de destino. Para anexar valores em vez de substituí-los, use <a href=\"#/p5/concat\">concat()</a>.
arrayCopy__description__1 = A versão simplificada com apenas dois argumentos, arrayCopy(src, dst), copia uma array inteira para outra do mesmo tamanho. É equivalente a arrayCopy(src, 0, dst, 0, src.length).
arrayCopy__description__2 = Usar esta função é muito mais eficiente para copiar dados da array do que iterar através de um loop for() e copiar cada elemento individualmente.
arrayCopy__params__src = Array: array de origem (source).
arrayCopy__params__srcPosition = Número: posição inicial na array de origem
arrayCopy__params__dst = Array: array de destino
arrayCopy__params__dstPosition = Número: posição inicial na array de destino
arrayCopy__params__length = Número: número de elementos da array a serem copiados
concat__description__0 = Concatena dois arrays, equivalente a Array.concat(). Não modifica as arrays de entrada.
concat__returns = Array: a array concatenada
concat__params__a = Array: primeira array a ser concatenada
concat__params__b = Array: segunda array a ser concatenada
reverse__description__0 = Inverte a ordem de uma array, equivalente a Array.reverse()
reverse__returns = Array: a lista invertida
reverse__params__list = Array: Array para inverter
shorten__description__0 = Diminui a array em um elemento e retorna a array encurtada, equivalente a Array.pop().
shorten__returns = Array: a array encurtada
shorten__params__list = Array: a array que será encurtada
shuffle__description__0 = Randomiza a ordem dos elementos de uma array. Implementa o  <a href='http://Bost.Ocks.org/mike/shuffle/' target=_blank> Fisher-Yates Shuffle Algorithm</a>.
shuffle__returns = Array: a array embaralhada
shuffle__params__array = Array: a array que será embaralhada
shuffle__params__bool = Booleano (opcional): modifica a array dada
sort__description__0 = Ordena uma array de números do menor ao maior ou coloca uma array de palavras em ordem alfabética. A array original não é modificada; uma array reordenada é retornada. O parâmetro de contagem indica o número de elementos a serem ordenados. Por exemplo, se houver 12 elementos em uma array e a contagem for definida como 5, apenas os 5 primeiros elementos na array serão ordenados.
sort__returns = Array: a lista ordenada
sort__params__list = Array: a array que será ordenada
sort__params__count = Número (opcional): número de elementos a serem ordenados, começando por 0
splice__description__0 = Insere um valor ou uma array de valores em uma array existente. O primeiro parâmetro especifica a array inicial que será modificada, e o segundo parâmetro define os dados a serem inseridos. O terceiro parâmetro é um valor de índice que especifica a posição da array a partir da qual inserir os dados. (Lembre-se de que a numeração do índice da array começa em zero, então a primeira posição é 0, a segunda posição é 1 e assim por diante.)
splice__returns = Array: a lista
splice__params__list = Array: array que será emendada
splice__params__value = Qualquer: qualquer valor a ser emendado na array
splice__params__position = Número: índice na array a partir do qual se insere os dados
subset__description__0 = Extrai uma array de elementos de uma array existente. O parâmetro "list" define a array da qual os elementos serão copiados e os parâmetros "start" e "count" especificam quais elementos extrair. Se nenhuma contagem for fornecida, os elementos serão extraídos do início ao fim da array. Ao especificar o início, lembre-se de que o primeiro elemento da array é 0. Esta função não altera a array de origem.
subset__returns = Array: Array de elementos extraídos
subset__params__list = Array: Array da qual se extrair
subset__params__start = Número: posição de início
subset__params__count = Número (opcional): número de valores a serem extraídos
float__description__0 = Converte uma string em sua representação de ponto flutuante. O conteúdo de uma string deve ser semelhante a um número ou NaN (not a number - não número) será retornado. Por exemplo, float ("1234,56") é avaliado como 1234,56, mas float ("girafa") retornará NaN.
float__description__1 = Quando uma array de valores é passada, uma array de floats (pontos flutuantes) do mesmo comprimento é retornada.
float__returns = Número: representação de ponto flutuante da string
float__params__str = String: string flutuante a ser processada
int__description__0 = Converte um booleano, string ou float em sua representação inteira. Quando uma array de valores é passada, uma array de inteiros do mesmo comprimento é retornada.
int__returns = Número: representação inteira do valor
int__params__n = String|Booleano|Número: valor a ser processado
int__params__radix = Inteiro (opcional): a base para a qual converter (padrão: 10)
int__params__ns = Array: valores a serem processados
str__description__0 = Converte um booleano, string ou número em sua representação de string. Quando uma array de valores é passada, uma array de strings do mesmo comprimento é retornada.
str__returns = String: representação de string do valor
str__params__n = String|Booleano|Número|Array: valor a ser processado
byte__description__0 = Converte um número, representação de string de um número ou booleano em sua representação de byte. Um byte pode ser apenas um número inteiro entre -128 e 127, portanto, quando um valor fora desse intervalo é convertido, ele volta para a representação de byte correspondente. Quando uma array de números, strings ou valores booleanos é passada, uma array de bytes com o mesmo comprimento é retornada.
byte__returns = Número: representação em byte do valor
byte__params__n = String|Booleano|Número: valor a ser processado
byte__params__ns = Array: valores a serem processados
char__description__0 = Converte um número ou string em sua representação de string de caractere único correspondente. Se um parâmetro de string for fornecido, ele será primeiro analisado como um número inteiro e, em seguida, convertido em uma string de um único caractere. Quando uma array de números ou valores de string é passada, uma array de strings de um único caractere do mesmo comprimento é retornada.
char__returns = String: representação de string do valor
char__params__n = String|Número: valor a ser processado
char__params__ns = Array: valores a serem processados
unchar__description__0 = Converte uma string de caractere único em sua representação inteira correspondente. Quando uma array de valores de string de caractere único é passada, uma array de inteiros do mesmo comprimento é retornada.
unchar__returns = Número: representação inteira do valor
unchar__params__n = String: valor a ser processado
unchar__params__ns = Array: valores a serem processados
hex__description__0 = Converte um número em uma string em sua notação hexadecimal equivalente. Se um segundo parâmetro é passado, ele é usado para definir o número de caracteres a serem gerados na notação hexadecimal. Quando uma array é passada, uma array de strings em notação hexadecimal do mesmo comprimento é retornada.
hex__returns = String: representação de string hexadecimal do valor
hex__params__n = Número: valor a ser processado
hex__params__digits = Número (opcional)
hex__params__ns = Número []: array de valores a serem processados
unhex__description__0 = Converte uma representação de string de um número hexadecimal em seu valor inteiro equivalente. Quando uma array de strings em notação hexadecimal é passada, uma array de inteiros do mesmo comprimento é retornada.
unhex__returns = Número: representação inteira do valor hexadecimal
unhex__params__n = String: valor a ser processado
unhex__params__ns = Array: valores a serem processados
join__description__0 = Combina uma array de Strings em uma String, cada uma separada pelo(s) caractere(s) usado(s) para o parâmetro separador. Para unir arrays de ints ou floats, é necessário primeiro convertê-las em Strings usando <a href="#/p5/nf">nf()</a> ou nfs().
join__returns = String: String unida
join__params__list = Array: array de Strings a serem unidas
join__params__separator = String: String a ser colocada entre cada item
match__description__0 = Esta função é usada para aplicar uma expressão regular a um trecho de texto e retornar grupos correspondentes (elementos encontrados entre parênteses) como um vetor de Strings. Se não houver correspondências, um valor nulo será retornado. Se nenhum grupo for especificado na expressão regular, mas a sequência corresponder, um vetor de comprimento 1 (com o texto correspondente como o primeiro elemento do vetor) será retornado.
match__description__1 = Para usar a função, primeiro verifique se o resultado é nulo. Se o resultado for nulo, então a sequência não coincidiu. Se a sequência coincidiu, um vetor é retornada.
match__description__2 = Se houver grupos (especificados por conjuntos de parênteses) na expressão regular, os conteúdos de cada um serão retornados no vetor. O elemento [0] de uma correspondência de uma expressão regular retorna toda a string correspondente e os grupos de correspondência começam no elemento [1] (o primeiro grupo é [1], o segundo [2] e assim por diante).
match__returns = String[]: Vetor de Strings encontrado
match__params__str = String: a String a ser procurada
match__params__regexp = String: a expressão regular a ser usada para procurar correspondências
matchAll__description__0 = Esta função é usada para aplicar uma expressão regular a um trecho de texto e retornar uma lista de grupos correspondentes (elementos encontrados entre parênteses) como uma matriz de strings bidimensional. Se não houver correspondências, um valor nulo será retornado. Se nenhum grupo for especificado na expressão regular, mas a sequência corresponder, uma matriz bidimensional ainda será retornada, mas a segunda dimensão terá apenas o comprimento um.
matchAll__description__1 = Para usar a função, primeiro verifique se o resultado é nulo. Se o resultado for nulo, então a sequência não coincidiu. Se a sequência coincidiu, uma matriz 2D é retornada.
matchAll__description__2 = Se houver grupos (especificados por conjuntos de parênteses) na expressão regular, os conteúdos de cada um serão retornados na matriz. Assumindo um loop com variável de contador i, o elemento [i][0] de uma correspondência de expressão regular retorna toda a string correspondente e os grupos de correspondência começam no elemento [i][1] (o primeiro grupo é [i][1] , o segundo [i][2] e assim por diante).
matchAll__returns = String[]: Array 2D de strings encontradas
matchAll__params__str = String: a String a ser procurada
matchAll__params__regexp = String: a expressão regular a ser usada para procurar correspondências
nf__description__0 = Função utilitária para formatar números em strings. Existem duas versões: uma para formatar floats e outra para formatar ints. Os valores dos dígitos, parâmetros esquerdo e direito devem ser sempre inteiros positivos. (NOTA): Tenha cautela ao usar os parâmetros esquerdo e direito, uma vez que eles adicionam números de 0s se o parâmetro for maior que o comprimento atual do número. Por exemplo, se o número for 123,2 e o parâmetro esquerdo passado for de 4, que é maior que o comprimento de 123 (parte inteira), ou seja, 3, o resultado será 0123,2. Mesmo caso para o parâmetro direito, ou seja, se o direito for 3, o resultado será 123,200.
nf__returns = String: String formatada
nf__params__num = Número|String: o número a ser formatado
nf__params__left = Inteiro|String (opcional): número de dígitos à esquerda da vírgula decimal
nf__params__right = Inteiro|String (opcional):número de dígitos à direita da vírgula decimal
nf__params__nums = Array: os números a se formatar
nfc__description__0 = Função utilitária para formatar números em strings e colocar vírgulas apropriadas para marcar unidades de 1000. Existem duas versões: uma para formatar ints e outra para formatar uma array de ints. O valor do parâmetro correto deve ser sempre um número inteiro positivo.
nfc__returns = String: String formatada
nfc__params__num = Numero|String: o número a ser formatado
nfc__params__right = Inteiro|String (opcional): número de dígitos à direita da vírgula decimal
nfc__params__nums = Array: os números a se formatar
nfp__description__0 = Função utilitária para formatar números em strings. Similar a <a href="#/p5/nf">nf()</a> mas coloca um "+" na frente de números positivos e um "-" na frente de números negativos. Existem duas versões: uma para formatar floats e outra para formatar ints. Os valores dos parâmetros esquerdo e direito devem ser sempre inteiros positivos.
nfp__returns = String: String formatada
nfp__params__num = Número: o número a ser formatado
nfp__params__left = Número (opcional): número de dígitos à esquerda da vírgula decimal
nfp__params__right = Número (opcional): número de dígitos à direita da vírgula decimal
nfp__params__nums = Número[]: os números a se formatar
nfs__description__0 = Função utilitária para formatar números em strings. Similar a <a href="#/p5/nf">nf()</a> mas coloca um "_" (espaço) adicional na frente de números positivos a fim de alinhá-los com números negativos que incluem o sinal "-" (menos). O principal tipo de uso de nfs() pode ser visto quando se deseja alinhar os dígitos (valores de posição) de um número não negativo com algum número negativo (veja o exemplo para obter uma imagem clara). Existem duas versões: uma para formatar floats e outra para formatar ints. Os valores dos dígitos, parâmetros esquerdo e direito, devem ser sempre inteiros positivos. <br/> Importante: o resultado mostrado no Canvas do alinhamento esperado pode variar com base no tipo de fonte tipográfica que você está usando. <br/> (NOTA): Tenha cautela ao usar os parâmetros esquerdo e direito, uma vez que eles adicionam números de 0s se o parâmetro for maior que o comprimento atual do número. Por exemplo, se o número for 123,2 e o parâmetro esquerdo passado for de 4, que é maior que o comprimento de 123 (parte inteira), ou seja, 3, o resultado será 0123,2. Mesmo caso para o parâmetro direito, ou seja, se o direito for 3, o resultado será 123,200.
nfs__returns = String: String formatada
nfs__params__num = Número: o número a ser formatado
nfs__params__left = Número (opcional): número de dígitos à esquerda da vírgula decimal
nfs__params__right = Número (opcional): número de dígitos à direita da vírgula decimal
nfs__params__nums = Array: os números a se formatar
split__description__0 = A função <a href="#/p5/split">split()</a> mapeia para String.split(), ela divide uma String em pedaços usando um caractere ou string como delimitador. O parâmetro delim especifica o caractere ou caracteres que marcam os limites entre cada pedaço. Uma array de String[] é retornado contendo cada uma das peças.
split__description__1 = A função <a href="#/p5/splitTokens">splitTokens()</a> funciona de maneira semelhante, exceto por se dividir usando um intervalo de caracteres em vez de um caractere ou sequência específica.
split__returns = String[]: Array de Strings
split__params__value = String: a String a ser dividida
split__params__delim = String: a String usada para separar os dados
splitTokens__description__0 = A função <a href="#/p5/splitTokens">splitTokens()</a> divide uma String em um ou mais delimitadores de caracteres ou "tokens." O parâmetro delim especifica o caractere ou caracteres a serem usados como limite.
splitTokens__description__1 = Se nenhum caractere delim for especificado, qualquer caractere de espaço em branco será usado para dividir. Os caracteres de espaço em branco incluem tab (\t), nova linha (\n), retorno de carro (\r), alimentação de formulário (\f), e espaço.
splitTokens__returns = String[]: Array de Strings
splitTokens__params__value = String: a String a ser dividida
splitTokens__params__delim = String (opcional): lista de Strings individuais que serão usadas como separadores
trim__description__0 = Remove os caracteres de espaço em branco do início e do final de uma String. Além dos caracteres de espaço em branco padrão, como espaço, retorno de carro e tab, esta função também remove o caractere Unicode "nbsp".
trim__returns = String: uma String aparada
trim__params__str = String: uma String a ser aparada
trim__params__strs = Array: uma Array de Strings a ser aparado
day__description__0 = p5.js se comunica com o relógio do seu computador. A função <a href="#/p5/day">day()</a> retorna o dia atual como um valor de 1 - 31.
day__returns = Inteiro: o dia atual
hour__description__0 = p5.js se comunica com o relógio do seu computador. A função <a href="#/p5/hour">hour()</a> retorna a hora atual como um valor de 0 - 23.
hour__returns = Inteiro: a hora atual
minute__description__0 = p5.js se comunica com o relógio do seu computador. A função <a href="#/p5/minute">minute()</a> retorna o minuto atual como um valor de 0 - 59.
minute__returns = Inteiro: o minuto atual
millis__description__0 = retorna o número de milissegundos (milésimos de segundo) desde que o programa começou a ser executado (quando <code>setup()</code> é chamado). Esta informação é frequentemente usada para eventos de temporização e sequências de animação.
millis__returns = Número: o número de milissegundos desde que o programa começou a ser executado
month__description__0 = p5.js se comunica com o relógio do seu computador. A função <a href="#/p5/month">month()</a> retorna o mês atual como um valor de 1 - 12.
month__returns = Inteiro: o mês atual
second__description__0 = p5.js se comunica com o relógio do seu computador. A função <a href="#/p5/second">second()</a> retorna o segundo atual como um valor de 0 - 59.
second__returns = Inteiro: o segundo atual
year__description__0 = p5.js se comunica com o relógio do seu computador. A função <a href="#/p5/year">year()</a> retorna o ano atual como um inteiro (2014, 2015, 2016, etc).
year__returns = Inteiro: o ano atual
plane__description__0 = Desenha um plano com largura e altura fornecidas
plane__params__width = Número (opcional): largura do plano
plane__params__height = Número (opcional): altura do plano
plane__params__detailX = Número (opcional): Número opcional de subdivisões de triângulo na dimensão x
plane__params__detailY = Número (opcional): Número opcional de subdivisões de triângulo na dimensão y
box__description__0 = Desenha uma caixa com largura, altura e profundidade fornecidas
box__params__width = Número (opcional): largura da caixa
box__params__Height = Número (opcional): altura da caixa
box__params__depth = Número (opcional): profundidade da caixa
box__params__detailX = Número (opcional): Número opcional de subdivisões de triângulo na dimensão x
box__params__detailY = Número (opcional): Número opcional de subdivisões de triângulo na dimensão y
sphere__description__0 = Desenha uma esfera com determinado raio.
sphere__description__1 = DetailX e detailY determinam o número de subdivisões na dimensão x e na dimensão y de uma esfera. Mais subdivisões fazem a esfera parecer mais regular. Os valores máximos recomendados são ambos 24. Usar um valor maior que 24 pode causar um alerta ou tornar o navegador mais lento.
sphere__params__radius = Número (opcional): raio do círculo
sphere__params__detailX = Número (opcional): Número opcional de subdivisões na dimensão x
sphere__params__detailY = Número (opcional): Número opcional de subdivisões na dimensão y
cylinder__description__0 = Desenha um cilindro com determinado raio e altura
cylinder__description__1 = DetailX e detailY determinam o número de subdivisões na dimensão x e na dimensão y de um cilindro. Mais subdivisões fazem o cilindro parecer mais regular. O valor máximo recomendado para detailX é 24. Usar um valor maior que 24 pode causar um alerta ou tornar o navegador mais lento.
cylinder__params__radius = Número (opcional): raio da superfície
cylinder__params__height = Número (opcional): altura do cilindro
cylinder__params__detailX = Número (opcional): Número de subdivisões na dimensão x;  o padrão é 24
cylinder__params__detailY = Número (opcional): Número de subdivisões na dimensão y; o padrão é 1
cylinder__params__bottomCap = Booleano (opcional): se deve desenhar a base do cilindro
cylinder__params__topCap = Booleano (opcional): se deve desenhar o topo do cilindro
cone__description__0 = Desenha um cone com determinado raio e altura
cone__description__1 = DetailX e detailY determinam o número de subdivisões na dimensão x e na dimensão y de um cone. Mais subdivisões fazem o cone parecer mais regular. O valor máximo recomendado para detailX é 24. Usar um valor maior que 24 pode causar um alerta ou tornar o navegador mais lento.
cone__params__radius = Número (opcional): raio da base
cone__params__height = Número (opcional): altura do cone
cone__params__detailX = Número (opcional): Número de segmentos, por padrão é 24, quanto mais segmentos, mais regular sua geometria.
cone__params__detailY = Número (opcional): Número de segmentos, por padrão é 1, quanto mais segmentos, mais regular sua geometria
cone__params__cap = Booleano (opcional): se deve desenhar a base do cone
ellipsoid__description__0 = Desenha um elipsóide com determinado raio
ellipsoid__description__1 = DetailX e detailY determinam o número de subdivisões na dimensão x e na dimensão y de um cone. Mais subdivisões fazem o elipsóide parecer mais regular. Evite o número do parâmetro acima de 150, pois pode travar o navegador.
ellipsoid__params__radiusx = Número (opcional): raio x do elipsóide
ellipsoid__params__radiusy = Número (opcional): raio y do elipsóide
ellipsoid__params__radiusz = Número (opcional): raio z do elipsóide
ellipsoid__params__detailX = Número (opcional): Número de segmentos, por padrão é 24, quanto mais segmentos, mais regular sua geometria. Evite o número do parâmetro acima de 150, pois pode travar o navegador.
ellipsoid__params__detailY = Número (opcional): Número de segmentos, por padrão é 16, quanto mais segmentos, mais regular sua geometria. Evite o número do parâmetro acima de 150, pois pode travar o navegador.
torus__description__0 = Desenha um toro com determinado raio e raio do tubo
torus__description__1 = DetailX e detailY determinam o número de subdivisões na dimensão x e na dimensão y de um toro. Mais subdivisões fazem o toro parecer mais regular. Os valores padrão e máximos para detailX e detailY são 24 e 16, respectivamente. Configurá-los com valores relativamente pequenos, como 4 e 6, permite criar novas formas além de um toro.
torus__params__radius = Número (opcional): raio do anel todo
torus__params__tubeRadius = Número (opcional): raio do tubo
torus__params__detailX = Número (opcional): Número de segmentos na dimensão x, por padrão é 24, quanto mais segmentos, mais regular sua geometria.
torus__params__detailY = Número (opcional): Número de segmentos na dimensão y, por padrão é 16, quanto mais segmentos, mais regular sua geometria.
orbitControl__description__0 = Permite o movimento em torno de um sketch 3D usando um mouse ou trackpad. Clicar e arrastar com o botão esquerdo girará a posição da câmera sobre o centro do sketch, ao clicar e arrastar com o botão direito, irá mover a câmera horizontalmente sem rotação, e usando a roda do mouse (rolagem), irá mover a câmera para mais perto ou mais longe do centro do sketch. Esta função pode ser chamada com parâmetros que ditam a sensibilidade ao movimento do mouse ao longo dos eixos X e Y. Chamar esta função sem parâmetros é equivalente a chamar orbitControl(1,1). Para inverter a direção do movimento em qualquer um dos eixos, insira um número negativo para sensibilidade.
orbitControl__params__sensitivityX = Número (opcional): sensibilidade ao movimento do mouse ao longo do eixo X
orbitControl__params__sensitivityY = Número (opcional): sensibilidade ao movimento do mouse ao longo do eixo Y
orbitControl__params__sensitivityZ = Número (opcional): sensibilidade para rolar o movimento ao longo do eixo Z
debugMode__description__0 = debugMode() ajuda a visualizar o espaço 3D adicionando uma grade para indicar onde o "solo" está em um sketch e um ícone de eixo que indica as direções + X, + Y e + Z. Esta função pode ser chamada sem parâmetros para criar um padrão de grade e ícone de eixos, ou pode ser chamada de acordo com os exemplos acima para personalizar o tamanho e a posição da grade e/ou ícone de eixos. A grade é desenhada usando a cor e a espessura do traço definidas por último. Para especificar esses parâmetros, adicione uma chamada para stroke() e strokeWeight() antes do final do loop draw().
debugMode__description__1 = Por padrão, a grade percorrerá a origem (0,0,0) do sketch ao longo do plano XZ e o ícone dos eixos será deslocado da origem. Ambos, a grade e ícone de eixos serão dimensionados de acordo com o tamanho do Canvas atual. Observe que, como a grade é executada paralelamente à visualização padrão da câmera, muitas vezes é útil usar o debugMode junto com orbitControl para permitir a visualização completa da grade.
debugMode__params__mode = Constante: tanto GRADE quanto EIXOS
debugMode__params__gridSize = Número (opcional): tamanho de um lado da grade
debugMode__params__gridDivisions = Número (opcional): Número de divisões na grade
debugMode__params__xOff = Número (opcional): deslocamento do eixo X da origem (0,0,0)
debugMode__params__yOff = Número (opcional): deslocamento do eixo Y da origem (0,0,0)
debugMode__params__zOff = Número (opcional): deslocamento do eixo Z da origem (0,0,0)
debugMode__params__axesSize = Número (opcional): tamanho do ícone de eixos
debugMode__params__gridXOff = Número (opcional)
debugMode__params__gridYOff = Número (opcional)
debugMode__params__gridZOff = Número (opcional)
debugMode__params__axesXOff = Número (opcional)
debugMode__params__axesYOff = Número (opcional)
debugMode__params__axesZOff = Número (opcional)
noDebugMode__description__0 = Desativa o debugMode() em um sketch 3D.
ambientLight__description__0 = Cria uma luz ambiente com uma cor. A luz ambiente é a luz que vem de todos os lugares do canvas. Não tem uma fonte particular.
ambientLight__params__v1 = Número: vermelho ou valor de matiz relativo ao intervalo de cores atual
ambientLight__params__v2 = Número: verde ou valor de saturação relativo ao intervalo de cores atual
ambientLight__params__v3 = Número: azul ou valor de brilho relativo ao intervalo de cores atual
ambientLight__params__alpha = Número (opcional): valor de alpha
ambientLight__params__value = String: uma string de cor
ambientLight__params__gray = Número: um valor de cinza
ambientLight__params__values = Número[]: uma array contendo os componentes vermelho, verde, azul e alfa da cor
ambientLight__params__color = p5.Color: a cor da luz ambiente
specularColor__description__0 = Define a cor do realce especular ao usar um material especular e luz especular.
specularColor__description__1 = Este método pode ser combinado com as funções specularMaterial() e shininess() para definir realces especulares. A cor padrão é o branco, isto é (255, 255, 255), que é usado se este método não for chamado antes de specularMaterial(). Se este método é chamado sem specularMaterial(), não haverá efeito.
specularColor__description__2 = Nota: specularColor é equivalente à função do processing <a href="https://processing.org/reference/lightSpecular_.html">lightSpecular</a>.
specularColor__params__v1 = Número: vermelho ou valor de matiz relativo ao intervalo de cores atual
specularColor__params__v2 = Número: verde ou valor de saturação relativo ao intervalo de cores atual
specularColor__params__v3 = Número: azul ou valor de brilho relativo ao intervalo de cores atual
specularColor__params__value = String: uma string de cor
specularColor__params__gray = Número: um valor de cinza
specularColor__params__values = Número[]: uma array contendo os componentes vermelho, verde, azul e alfa da cor
specularColor__params__color = p5.Color: a cor da luz ambiente
directionalLight__description__0 = Cria uma luz direcional com uma cor e uma direção
directionalLight__description__1 = Um máximo de 5 luzes direcionais podem estar ativas ao mesmo tempo
directionalLight__params__v1 = Número: vermelho ou valor de matiz (dependendo do modelo de cores atual)
directionalLight__params__v2 = Número: verde ou valor de saturação
directionalLight__params__v3 = Número: azul ou valor de brilho
directionalLight__params__position = p5.Vector: a direção da luz
directionalLight__params__color = Número[]|String|p5.Color: Array de cor, string CSS de cor,  ou valor de <a href="#/p5.Color">p5.Color</a>
directionalLight__params__x = Número: direção do eixo x
directionalLight__params__y = Número: direção do eixo y
directionalLight__params__z = Número: direção do eixo z
pointLight__description__0 = Cria um ponto de luz com uma cor e uma posição de luz
pointLight__description__1 = Um máximo de 5 pontos de luz podem estar ativos ao mesmo tempo
pointLight__params__v1 = Número: vermelho ou valor de matiz (dependendo do modelo de cores atual)
pointLight__params__v2 = Número: verde ou valor de saturação
pointLight__params__v3 = Número: azul ou valor de brilho
pointLight__params__x = Número: posição do eixo x
pointLight__params__y = Número: posição do eixo y
pointLight__params__z = Número: posição do eixo z
pointLight__params__position = p5.Vector: a posição da luz
pointLight__params__color = Número[]|String|p5.Color: Array de cor, string CSS de cor,  ou valor de <a href="#/p5.Color">p5.Color</a>
lights__description__0 = Define a luz ambiente e direcional padrão. Os padrões são <a href="#/p5/ambientLight">ambientLight(128, 128, 128)</a> e <a href="#/p5/directionalLight">directionalLight(128, 128, 128, 0, 0, -1)</a>. As luzes precisam ser incluídas no <a href="#/p5/draw">draw()</a> para permanecerem persistentes em um programa de loop. Colocando-as no <a href="#/p5/setup">setup()</a> de um programa de loop, fará com que tenham efeito apenas na primeira vez que o loop rodar..
lightFalloff__description__0 = Define as taxas de queda (falloff) para luzes pontuais. Afeta apenas os elementos que são criados depois dele no código. Por padrão o valor é lightFalloff(1.0, 0.0, 0.0), e os parâmetros são usados para calcular a queda (falloff) com a seguinte equação:
lightFalloff__description__1 = d = distância da posição da luz à posição do vértice
lightFalloff__description__2 = falloff = 1 / (Constante + d * LINEAR + ( d * d ) * QUADRATIC)
lightFalloff__params__linear = Número: valor linear para determinar a queda (falloff)
lightFalloff__params__quadratic = Número: valor quadrático para determinar a queda (falloff)
spotLight__description__0 = Cria um holofote com uma determinada cor, posição, direção de luz, ângulo e concentração. Aqui, ângulo se refere à abertura do cone do holofote, e a concentração é usada para focar a luz em direção ao centro. Ambos o ângulo e a concentração são opcionais, mas se você quiser fornecer a concentração, também terá que especificar o ângulo.
spotLight__description__1 = Um máximo de 5 holofotes podem estar ativos ao mesmo tempo
spotLight__params__v1 = Número: vermelho ou valor de matiz (dependendo do modelo de cores atual)
spotLight__params__v2 = Número: verde ou valor de saturação
spotLight__params__v3 = Número: azul ou valor de brilho
spotLight__params__x = Número: posição do eixo x
spotLight__params__y = Número: posição do eixo y
spotLight__params__z = Número: posição do eixo z
spotLight__params__rx = Número: direção do eixo x da luz
spotLight__params__ry = Número: direção do eixo y da luz
spotLight__params__rz = Número: direção do eixo z da luz
spotLight__params__angle = Número (opcional): parâmetro opcional para ângulo. Por padrão até PI/3
spotLight__params__conc = Número (opcional): parâmetro opcional para concentração. Por padrão até 100
spotLight__params__color = Número[]|String|p5.Color: Array de cor, string CSS de cor,  ou valor de <a href="#/p5.Color">p5.Color</a>
spotLight__params__position = p5.Vector: a posição da luz
spotLight__params__direction = p5.Vector: a direção da luz
noLights__description__0 = Esta função irá remover todas as luzes do sketch para os materiais renderizados subsequentes. Ela afeta todos os métodos subsequentes. Chamadas para métodos de iluminação feitas após o noLights() irão reativar as luzes no sketch.
loadModel__description__0 = Carregar um modelo 3D de um arquivo OBJ ou STL.
loadModel__description__1 = <a href="#/p5/loadModel">loadModel()</a> deve ser colocado dentro de <a href="#/p5/preload">preload()</a>. Isso permite que o modelo carregue totalmente antes que o resto do seu código seja executado.
loadModel__description__2 = Uma das limitações dos formatos OBJ e STL é que eles não têm um senso de escala embutido. Isso significa que os modelos exportados de programas diferentes podem ter tamanhos muito diferentes. Se o seu modelo não estiver sendo exibido, tente chamar <a href="#/p5/loadModel">loadModel()</a> com o parâmetro normalize definido como true (verdadeiro).Isso redimensionará o modelo para uma escala apropriada para p5. Você também pode fazer alterações adicionais no tamanho final do seu modelo com a função <a href="#/p5/scale">scale()</a> .
loadModel__description__3 = Além disso, o suporte para arquivos STL coloridos não está presente. Arquivos STL com cor serão renderizados sem propriedades de cor.
loadModel__returns = o objeto p5.Geometry: <a href="#/p5.Geometry">p5.Geometry</a>
loadModel__params__path = String: endereço do modelo a ser carregado
loadModel__params__normalize = Booleano: Se true (verdadeiro), dimensiona o modelo para um tamanho padronizado ao carregar
loadModel__params__successCallback = função(p5.Geometry) (opcional): Função a ser chamada assim que o modelo for carregado. Será passado o objeto do modelo 3D.
loadModel__params__failureCallback = Função(evento) (opcional): chamado com erro de evento se o modelo não carregar.
loadModel__params__fileType = String (opcional): A extensão de arquivo do modelo (<code>.stl</code>, <code>.obj</code>).
model__description__0 = Renderizar um modelo 3D para a tela.
model__params__model = p5.Geometry: Modelo 3D carregado para ser renderizado
loadShader__description__0 = Carrega uma shader personalizado dos caminhos de vértice e fragmento de shader  fornecidos. Os arquivos de shader são carregados de forma assíncrona em segundo plano, portanto, este método deve ser usado em <a href="#/p5/preload">preload()</a>.
loadShader__description__1 = Por enquanto, existem três tipos principais de shaders. O p5 fornecerá automaticamente vértices, normais, cores e atributos de iluminação apropriados se os parâmetros definidos na shader corresponderem aos nomes.
loadShader__returns = p5.Shader: um objeto de shader criado a partir dos arquivos de shaders de vértice e fragmento fornecidos.
loadShader__params__vertFilename = String: endereço para o arquivo que contém o código fonte do vértice da shader
loadShader__params__fragFilename = String: endereço para o arquivo que contém o código fonte do fragmento da shader
loadShader__params__callback = Função (opcional): callback a ser executado após a conclusão de loadShader. Em caso de sucesso, o objeto Shader é passado como o primeiro argumento.
loadShader__params__errorCallback = Função (opcional): callback a ser executado quando ocorrer um erro dentro do loadShader. Em caso de erro, o erro é passado como o primeiro argumento.
createShader__returns = p5.Shader: um objeto de shader criado a partir dos vértices e fragmentos de shader fornecidos.
createShader__params__vertSrc = String: código fonte para o vértice da shader
createShader__params__fragSrc = String: código fonte para o fragmento da shader
shader__description__0 = A função <a href="#/p5/shader">shader()</a> permite que o usuário forneça uma shader personalizada para preencher as formas no modo WEBGL. Os usuários podem criar suas próprias shaders carregando seus vértices e fragmentos com <a href="#/p5/loadShader">loadShader()</a>.
shader__params__s = p5.Shader (opcional): a desejada <a href="#/p5.Shader">p5.Shader</a> para usar para renderizar formas.
resetShader__description__0 = Esta função restaura os padrões de shaders no modo WEBGL. O código que for executado após o resetShader() não será afetado pelas definições de shaders anteriores. Deve ser executado depois de <a href="#/p5/shader">shader()</a>.
texture__description__0 = Textura para geometria. Você pode ver outros materiais possíveis neste <a href="https://p5js.org/examples/3d-materials.html">exemplo</a>.
texture__params__tex = p5.Image|p5.MediaElement|p5.Graphics: Gráficos bidimensionais para renderizar como textura
textureMode__description__0 = Define o espaço de coordenadas para mapeamento de textura. O modo padrão é IMAGE, que se refere às coordenadas reais da imagem. NORMAL refere-se a um espaço normalizado de valores que variam de 0 a 1. Esta função só funciona no modo WEBGL.
textureMode__description__1 = Em modo IMAGE, se uma imagem é de 100 x 200 pixels, mapear a imagem por todo o tamanho de um quadrante exigiria os pontos (0,0) (100, 0) (100,200) (0,200). O mesmo mapeamento em NORMAL é (0,0) (1,0) (1,1) (0,1).
textureMode__params__mode = Constante: tanto IMAGE ou NORMAL
textureWrap__description__0 = Define o wrapping mode (modo de embrulhamento) de textura global. Isso controla como as texturas se comportam quando seu mapeamento uv sai do intervalo 0 - 1. Existem três opções: CLAMP, REPEAT e MIRROR.
textureWrap__description__1 = faz com que os pixels na extremidade da textura se estendam para os limites. REPEAT faz com que a textura se espalhe repetidamente até atingir os limites. MIRROR funciona de forma semelhante a REPEAT, mas inverte a textura a cada novo tile (ladrilho).
textureWrap__description__2 = REPEAT & MIRROR só estão disponíveis se a textura for uma for uma multiplicação de dois (128, 256, 512, 1024, etc.).
textureWrap__description__3 = Este método afetará todas as texturas em seu sketch até que uma chamada de textureWrap subsequente seja feita.
textureWrap__description__4 = Se apenas um argumento for fornecido, ele será aplicado aos eixos horizontal e vertical.
textureWrap__params__wrapX = Constante: tanto CLAMP, REPEAT ou MIRROR
textureWrap__params__wrapY = Constante (opcional): tanto CLAMP, REPEAT ou MIRROR
normalMaterial__description__0 = O material normal para geometria é um material que não é afetado pela luz. Não é reflexivo e é um material de placeholder (espaço reservado) frequentemente usado para depurar (debug). As superfícies voltadas para o eixo X tornam-se vermelhas, as voltadas para o eixo Y tornam-se verdes e as voltadas para o eixo Z tornam-se azuis. Você pode ver todos os materiais possíveis neste <a href="https://p5js.org/examples/3d-materials.html">exemplo</a>.
ambientMaterial__description__0 = Material ambiente para geometria com uma determinada cor. O material ambiente define a cor que o objeto reflete sob qualquer iluminação. Por exemplo, se o material ambiente de um objeto for vermelho puro, mas a iluminação ambiente contiver apenas verde, o objeto não refletirá nenhuma luz. Aqui está um <a href="https://p5js.org/examples/3d-materials.html">exemplo contendo todos os materiais possíveis</a>.
ambientMaterial__params__v1 = Número: valor de cinza, de vermelho ou valor de matiz (dependendo do modo de cor atual),
ambientMaterial__params__v2 = Número (opcional): verde ou valor de saturação
ambientMaterial__params__v3 = Número (opcional): azul ou valor de brilho
ambientMaterial__params__color = Número[]|String|p5.Color: cor, array de cor ou string de cor CSS
emissiveMaterial__description__0 = Define a cor emissiva do material usado para a geometria desenhada na tela. Este é um nome incorreto no sentido de que o material não emite luz que afeta os polígonos circundantes. Em vez disso, dá a aparência de que o objeto está brilhando. Um material emissivo será exibido com força total, mesmo se não houver luz para ele refletir.
emissiveMaterial__params__v1 = Número: valor de cinza, de vermelho ou valor de matiz (dependendo do modo de cor atual),
emissiveMaterial__params__v2 = Número (opcional): valor de verde ou de saturação
emissiveMaterial__params__v3 = Número (opcional): valor de azul ou de brilho
emissiveMaterial__params__a = Número (opcional): opacidade
emissiveMaterial__params__color = Número[]|String|p5.Color: cor, array de cor ou string de cor CSS
specularMaterial__description__0 = Material especular para geometria com uma determinada cor. O material especular é um material reflexivo brilhante. Como o material ambiente, também define a cor que o objeto reflete sob a iluminação ambiente. Por exemplo, se o material especular de um objeto for vermelho puro, mas a iluminação ambiente contiver apenas verde, o objeto não refletirá nenhuma luz. Para todos os outros tipos de luz como ponto de luz e luz direcional, um material especular refletirá a cor da fonte de luz para o observador. Aqui está um <a href="https://p5js.org/examples/3d-materials.html">exemplo contendo todos os materiais possíveis</a>.
specularMaterial__params__gray = Número: Número especificando o valor entre branco e preto.
specularMaterial__params__alpha = Número (opcional): valor alfa relativo ao intervalo de cores atual (por padrão é 0 - 255)
specularMaterial__params__v1 = Número: valor de cinza, de vermelho ou valor de matiz relativo ao intervalo de cores atual ,
specularMaterial__params__v2 = Número (opcional): valor de verde ou de saturação relativo ao intervalo de cores atual
specularMaterial__params__v3 = Número (opcional): valor de azul ou de brilho relativo ao intervalo de cores atual
specularMaterial__params__color = Número[]|String|p5.Color: cor, array de cor ou string de cor CSS
shininess__description__0 = Define a quantidade de brilho na superfície de formas. Usado em combinação com specularMaterial() para definir as propriedades do material das formas. O valor padrão e mínimo é 1.
shininess__params__shine = Número: grau de brilho. Por padrão 1.
camera__description__0 = Define a posição da câmera para um sketch 3D. Os parâmetros para esta função definem a posição da câmera, o centro do sketch (para onde a câmera está apontando) e uma direção para cima (a orientação da câmera).
camera__description__1 = Esta função simula os movimentos da câmera, permitindo que os objetos sejam visualizados de vários ângulos. Lembre-se de que ele não move os próprios objetos, mas sim a câmera. Por exemplo, quando o valor centerX é positivo, a câmera está girando para o lado direito do sketch, então o objeto parece estar se movendo para a esquerda.
camera__description__2 = Veja este  <a href = "https://www.openprocessing.org/sketch/740258">exemplo</a> para ver a posição de sua câmera.
camera__description__3 = Quando chamada sem argumentos, esta função cria uma câmera padrão equivalente à camera(0, 0, (height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, 1, 0);
camera__params__x = Número (opcional): valor da posição da câmera no eixo x
camera__params__y = Número (opcional): valor da posição da câmera no eixo y
camera__params__z = Número (opcional): valor da posição da câmera no eixo z
camera__params__centerX = Número (opcional): coordenada x representando o centro do sketch
camera__params__centerY = Número (opcional): coordenada y representando o centro do sketch
camera__params__centerZ = Número (opcional): coordenada z representando o centro do sketch
camera__params__upX = Número (opcional): componente x da direção 'para cima' da câmera
camera__params__upY = Número (opcional): componente y da direção 'para cima' da câmera
camera__params__upZ = Número (opcional): componente z da direção 'para cima' da câmera
perspective__description__0 = Define uma projeção em perspectiva para a câmera em um sketch 3D. Esta projeção representa a profundidade através da técnica de Escorço (encurtamento): os objetos que estão perto da câmera aparecem em seu tamanho real, enquanto os que estão mais distantes da câmera parecem menores. Os parâmetros para esta função definem o frustum (tronco) de visualização (a pirâmide frustum dentro da qual os objetos são vistos pela câmera) por meio do campo de visão vertical, relação de aspecto (geralmente largura / altura) e planos de recorte próximos e distantes.
perspective__description__1 = Quando chamada sem argumentos, os padrões fornecidos são equivalentes a perspective(PI/3.0, width/height, eyeZ/10.0, eyeZ<em>10.0), where eyeZ is equal to ((height/2.0) / tan(PI</em>60.0/360.0));
perspective__params__fovy = Número (opcional): tronco do campo de visão vertical da câmera, de baixo para cima, em <a href="#/p5/angleMode">angleMode</a> graus
perspective__params__aspect = Número (opcional): relação de aspecto da câmara de frustum (tronco)
perspective__params__near = Número (opcional): frustum (tronco) perto do plano de comprimento
perspective__params__far = Número (opcional): frustum (tronco) distante do plano de comprimento
ortho__description__0 = Define uma projeção ortográfica para a câmera em um sketch 3D e define um frustum de visualização em forma de caixa dentro do qual os objetos são vistos. Nesta projeção, todos os objetos com a mesma dimensão aparecem do mesmo tamanho, independentemente de estarem próximos ou distantes da câmera. Os parâmetros para esta função especificam o frustum (tronco) de visualização onde esquerda e direita são os valores x mínimo e máximo, topo e fundo são os valores y mínimo e máximo e próximo e longe são os valores z mínimo e máximo. Se nenhum parâmetro for fornecido, por padrão será usado: ortho(-width/2, width/2, -height/2, height/2).
ortho__params__left = Número (opcional): câmera frustum (tronco) do plano esquerdo
ortho__params__right = Número (opcional): câmera frustum (tronco) do plano direito
ortho__params__bottom = Número (opcional): câmera frustum (tronco) do plano inferior
ortho__params__top = Número (opcional): câmera frustum (tronco) do plano superior
ortho__params__near = Número (opcional): câmera frustum (tronco) próxima ao plano
ortho__params__far = Número (opcional): câmera frustum (tronco) longe do plano
frustum__description__0 = Define uma matriz de perspectiva conforme definida pelos parâmetros.
frustum__description__1 = Um frustum (tronco) é uma forma geométrica: uma pirâmide com o topo cortado. Com o olho do observador no topo imaginário da pirâmide, os seis planos do frustum atuam como planos de recorte ao renderizar uma vista 3D. Assim, qualquer forma dentro dos planos de recorte é visível; qualquer coisa fora desses planos não é visível.
frustum__description__2 = Definir o frustum muda a perspectiva da cena sendo renderizada. Isso pode ser alcançado de forma mais simples em muitos casos, usando <a href="https://p5js.org/reference/#/p5/perspective">perspective()</a>.
frustum__params__left = Número (opcional): câmera frustum (tronco) do plano esquerdo
frustum__params__right = Número (opcional): câmera frustum (tronco) do plano direito
frustum__params__bottom = Número (opcional): câmera frustum (tronco) do plano inferior
frustum__params__top = Número (opcional): câmera frustum (tronco)  do plano superior
frustum__params__near = Número (opcional): câmera frustum (tronco) próxima ao plano
frustum__params__far = Número (opcional): câmera frustum (tronco) longe do plano
createCamera__description__0 = Cria um novo objeto <a href="#/p5.Camera">p5.Camera</a> e diz ao renderizador para usar aquela câmera. Retorna o objeto p5.Camera.
createCamera__returns = p5.Camera: O objeto de câmera recém-criado.
setCamera__description__0 = Define a câmera atual do rendererGL para um objeto p5.Camera. Permite alternar entre várias câmeras.
setCamera__params__cam = p5.Camera: objeto p5.Camera
setAttributes__description__0 = Define atributos para o contexto de desenho WebGL. Esta é uma maneira de ajustar a forma como o renderizador WebGL funciona para afinar a exibição e o desempenho.
setAttributes__description__1 = Observe que isso reinicializará o contexto de desenho se for chamado depois que o canvas WebGL for feito.
setAttributes__description__2 = Se um objeto for passado como parâmetro, todos os atributos não declarados no objeto serão configurados como padrão.
setAttributes__description__3 = Os atributos disponíveis são: alfa - indica se a tela contém um buffer alfa. Por padrão é true (verdadeiro).
setAttributes__description__4 = depth - indica se o buffer do desenho tem um buffer de profundidade de pelo menos 16 bits. Por padrão é true (verdadeiro).
setAttributes__description__5 = stencil - indica se o buffer do desenho tem um buffer de estêncil de pelo menos 8 bits.
setAttributes__description__6 = antialias - indica se deve ou não executar anti-aliasing. Por padrão é false (true no Safari).
setAttributes__description__7 = premultipliedAlpha - indica que o compositor da página irá assumir que o buffer do desenho contém cores com alfa pré-multiplicado. Por padrão é false (falso).
setAttributes__description__8 = preserveDrawingBuffer - se true (verdadeiro) os buffers não serão apagados e preservarão seus valores até que sejam apagados ou sobrescritos pelo autor (observe que o p5 apaga automaticamente no loop de desenho - draw). Por padrão é true (verdadeiro).
setAttributes__description__9 = perPixelLighting - se true (verdadeiro), a iluminação por pixel será usada na shader de iluminação, caso contrário, a iluminação por vértice será usada. Por padrão é true (verdadeiro).
setAttributes__params__key = String: Nome do atributo
setAttributes__params__value = Booleano: Novo valor do atributo nomeado
setAttributes__params__obj = Objeto: objeto com pares de chave-valor
getAudioContext__description__0 = retorna o contexto de áudio para este sketch. Útil para usuários que desejam se aprofundar no <a target='_blank' href= 'http://webaudio.github.io/web-audio-api/'>Web Audio API </a>.
getAudioContext__description__1 = Alguns navegadores exigem que os usuários iniciem o AudioContext com um gesto do usuário, como o touchStarted no exemplo abaixo.
getAudioContext__returns = Objeto: AudioContext para este sketch.
userStartAudio__description__0 = Não é apenas uma boa prática dar aos usuários controle sobre como iniciar o áudio. Esta política é aplicada por muitos navegadores da web, incluindo iOS e <a href="https://goo.gl/7K7WLu" title="Google Chrome's autoplay policy">Google Chrome</a>, que criou a Web Audio API <a href="https://developer.mozilla.org/en-US/docs/Web/API/AudioContext" title="Audio Context @ MDN">Audio Context</a> em um estado suspenso.
userStartAudio__description__1 = Nessas políticas específicas do navegador, o som não será reproduzido até um evento de interação do usuário (i.e. <code>mousePressed()</code>) retoma explicitamente o AudioContext, ou inicia um audio node (nó). Isso pode ser feito chamando <code>start()</code> em um <code>p5.Oscillator</code>, <code> play()</code> em um <code>p5.SoundFile</code>, ou simplesmente <code>userStartAudio()</code>.
userStartAudio__description__2 = <code>userStartAudio()</code> inicia o AudioContext em um gesto do usuário. O comportamento padrão habilitará o áudio em qualquer evento mouseUp ou touchEnd. Ele também pode ser colocado em uma função de interação específica, como o <code>mousePressed()</code> como no exemplo abaixo. Este método utiliza <a href="https://github.com/tambien/StartAudioContext">StartAudioContext </a>, uma biblioteca por Yotam Mann (MIT Licence, 2016).
userStartAudio__returns = Promise: retorna uma Promise que é resolvida quando o estado AudioContext está 'em execução'
userStartAudio__params__element-_leftBracket_-s-_rightBracket_- = Elemento|Array (opcional): Este argumento pode ser um Element,  Selector String, NodeList, p5.Element,  jQuery Element, ou um Array de qualquer um desses.
userStartAudio__params__callback = Função (opcional): Callback para invocar quando o AudioContext for iniciado
sampleRate__description__0 = retorna um número que representa a taxa de amostragem, em amostras por segundo, de todos os objetos de som neste contexto de áudio. É determinado pela taxa de amostragem da placa de som do seu sistema operacional e atualmente não é possível mudar. Freqüentemente, é 44100, ou duas vezes o alcance da audição humana.
sampleRate__returns = Número: taxa de amostragem de amostras por segundo
freqToMidi__description__0 = retorna o valor de nota MIDI mais próximo para uma determinada frequência.
freqToMidi__returns = Número: valor da nota MIDI
freqToMidi__params__frequency = Número: uma frequência, por exemplo, o "A" acima do C médio é 440Hz.
midiToFreq__description__0 = retorna o valor da frequência de um valor de nota MIDI. O MIDI geral trata as notas como inteiros onde o C médio é 60, o C# é 61, D é 62 etc. Útil para gerar frequências musicais com osciladores.
midiToFreq__returns = Número: valor de frequência da nota MIDI fornecida
midiToFreq__params__midiNote = Número: o número de uma nota MIDI
soundFormats__description__0 = Lista os formatos de SoundFile que você incluirá. O LoadSound pesquisará essas extensões em seu diretório e escolherá um formato compatível com o navegador da Web do cliente. <a href="http://media.io/">Aqui</a> há um conversor de arquivos online grátis.
soundFormats__params__formats = String (opcional): i.e. 'mp3', 'wav', 'ogg'
saveSound__description__0 = Salva um p5.SoundFile como um arquivo .wav. O navegador solicitará que o usuário baixe o arquivo em seu dispositivo. Para fazer upload de áudio para um servidor, use <a href="/docs/reference/#/p5.SoundFile/saveBlob"><code>p5.SoundFile.saveBlob</code></a>.
saveSound__params__soundFile = p5.SoundFile: p5.SoundFile que você deseja salvar
saveSound__params__fileName = String: nome do arquivo .wav resultante.
loadSound__description__0 = loadSound() retorna um novo p5.SoundFile de um endereço de arquivo especificado. Se chamado durante o preload(), o p5.SoundFile estará pronto para tocar a tempo para o setup() e draw(). Se chamado fora do preload, o p5.SoundFile não estará pronto imediatamente, então o loadSound aceita um callback como segundo parâmetro. Usar um <a href="https://github.com/processing/p5.js/wiki/Local-server"> servidor local</a> é recomendado ao carregar arquivos externos.
loadSound__returns = SoundFile: retorna um p5.SoundFile
loadSound__params__path = String|Array: endereço para o arquivo de som, ou um array com os endereços dos arquivos para os soundfiles em vários formatos   i.e. ['sound.ogg', 'sound.mp3'].  Alternativamente, aceita um objeto: tanto do arquivo de API HTML5, ou um p5.File.
loadSound__params__successCallback = Função (opcional): nome de uma função a ser chamada assim que o arquivo carregar
loadSound__params__errorCallback = Função (opcional): nome de uma função a ser chamada se houver um erro ao carregar o arquivo.
loadSound__params__whileLoading = Função (opcional): Nome de uma função a ser chamada durante o carregamento do arquivo. Esta função receberá a porcentagem carregada até o momento, de 0.0 a 1.0.
createConvolver__description__0 = Cria um p5.Convolver. Aceita um caminho para um arquivo de som que será usado para gerar uma resposta de impulso.
createConvolver__returns = p5.Convolver:
createConvolver__params__path = String: endereço para o arquivo de som.
createConvolver__params__callback = Função (opcional): função a ser chamada se o carregamento for bem-sucedido. O objeto será passado como argumento para a função de callback.
createConvolver__params__errorCallback = Função (opcional): função a ser chamada se o carregamento não for bem-sucedido. Um erro personalizado será passado como argumento para a função de callback.
setBPM__description__0 = Define o tempo global, em batidas por minuto, para todas as p5.Parts. Este método afetará todas as p5.Parts ativas.
setBPM__params__BPM = Número: Beats Por Minuto
setBPM__params__rampTime = Número: Daqui a segundos
