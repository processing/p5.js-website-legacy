description__0 = Cria um novo objeto do tipo <a href="#/p5.Image"> p5.Image </a>. Um <a href="#/p5.Image"> p5.Image </a> é uma representação de uma imagem através do canvas.
description__1 = Imagens nos formatos .gif, .jpg, e .png podem ser passadas para um objeto do tipo <a href="#/p5.Image"> p5.Image </a>. As imagens podem ser exibidas em espaço 2D e 3D. Antes de uma imagem ser usada, ela deve ser carregada com a função <a href="#/p5/loadImage"> loadImage () </a>. A classe <a href="#/p5.Image"> p5.Image </a> contém campos para a largura e altura da imagem, bem como uma array chamada <a href = "# / p5.Image / pixels "> pixels [] </a> que contém os valores de cada pixel da imagem.
description__2 = Os métodos descritos abaixo permitem fácil acesso aos pixels e canal alpha da imagem e simplificam o processo de composição.
description__3 = Antes de usar a array <a href="#/p5.Image/pixels"> pixels [] </a>, certifique-se de usar o método <a href="#/p5.Image/loadPixels"> loadPixels() </a> na imagem para garantir que os dados de pixel sejam carregados corretamente.
params__width = Número
params__height = Número
width__description__0 = Largura da imagem.
height__description__0 = Altura da imagem.
pixels__description__0 =
    <a href ='https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Uint8ClampedArray'> Uint8ClampedArray </a> contendo os valores de todos os pixels na tela de exibição. Os valores dos pixels são expressos em números. A array tem quatro vezes o tamanho da tela de exibição (incluindo um fator para densidade de pixels), representando os valores R, G, B e A para cada pixel. A array é preenchida da esquerda para a direita em linhas e depois para baixo em colunas. Telas de retina e outras telas de alta densidade também têm matrizes maiores de pixels [] (devido ao coeficiente <code>pixelDensity ^ 2</code>). Se uma imagem em uma tela comum tiver 100x100 pixels e seu arranjo for 40.000, então na Retina o arranjo seria 160.000.
    Os primeiros 4 valores na array (ou seja, índice 0-3) são os valores R, G, B, A no pixel (0,0) , os próximos 4 valores ( ou seja, o índice 4 - 7) contém os valores R, G, B, A no pixel (1,0) . O exemplo abaixo mostra como definir o valor do pixel em uma coordenada específica (x, y). <br> <pre><code class="language-javascript">let d = pixelDensity(); for (let i = 0; i < d; i++) { "{" } · for (let j = 0; j < d; j++) { "{" } · // loop over · index = 4 * ((y * d + j) * width * d + (x * d + i)); · pixels[index] = r; · pixels[index+1] = g; · pixels[index+2] = b; · pixels[index+3] = a; · { "}" } { "}" }</code></pre>
pixels__description__1 = Antes de acessar esta array, os dados devem ser carregados com a função <a href="#/p5/loadPixels"> loadPixels () </a>. Depois que os dados da array forem modificados, a função <a href="#/p5/updatePixels"> updatePixels() </a> deve ser executada para atualizar as alterações.
loadPixels__description__0 = Carrega os dados de pixels para esta imagem no atributo [pixels].
updatePixels__description__0 = Atualiza o canvas para esta imagem com o conteúdo da array [pixels].
updatePixels__description__1 = Se esta imagem for um GIF animado, os pixels serão atualizados no quadro que está sendo exibido.
updatePixels__params__x = Inteiro: offset em X da área a ser atualizada no canvas
updatePixels__params__y = Inteiro: offset em Y da área a ser atualizada no canvas
updatePixels__params__w = Inteiro: altura da área a ser atualizada no canvas
updatePixels__params__h = Inteiro: altura da área a ser atualizada no canvas
get__description__0 = Obtém uma área de pixels de uma imagem.
get__description__1 = Se nenhum parâmetro for passado, toda a imagem será retornada. Se x e y forem os únicos parâmetros passados, um único pixel é extraído. Se todos os parâmetros forem passados, uma área retangular é extraída e uma <a href="#/p5.Image"> p5.Image </a> é retornada.
get__returns = p5.Image: o retângulo <a href="#/p5.Image"> p5.Image </a>
get__params__x = Número: coordenada do pixel relativo ao eixo X
get__params__y = Número: coordenada do pixel relativo ao eixo Y
get__params__w = Número: largura (width)
get__params__h = Número: altura (height)
set__description__0 = Define a cor de um único pixel ou escreve uma imagem neste objeto <a href="#/p5.Image"> p5.Image </a>.
set__description__1 = Observe que ao trabalhar com um numero grande de pixels este método será mais lento do que manipular diretamente a array de pixels e, em seguida, chamar <a href="#/p5.Image/updatePixels"> updatePixels() </a>.
set__params__x = Número: coordenada do pixel relativo ao eixo X
set__params__y = Número: coordenada do pixel relativo ao eixo Y
set__params__a = Número | Número [] | Objeto: valor em escala de cinza | array de pixels | a <a href="#/p5.Color"> p5.Color </a> | imagem a ser copiada
resize__description__0 = Redimensiona a imagem para uma nova largura e altura. Para fazer a imagem escalar proporcionalmente, use 0 como o valor para o parâmetro de altura ou largura. Por exemplo, para definir a largura de uma imagem 150 pixels e alterar a altura usando a mesma proporção, use <code>resize (150, 0)</code>.
resize__params__width = Número: a largura da imagem redimensionada
resize__params__height = Número: a altura da imagem redimensionada
copy__description__0 = Copia os pixels de uma área da imagem para outra área. Se for fornecido o parâmetro <code>srcImg </code> uma área de pixels da uma imagem de origem será copiada para uma área de outra imagem especificada pelo usuário. Caso contrario a imagem atual será considerada como fonte. Se as áreas de origem e destino da cópia não forem do mesmo tamanho, a área de pixel de origem será redimensionada automaticamente para se ajustar ao tamanho da área de destino.
copy__params__srcImage = p5.Image | p5.Element: imagem de origem
copy__params__sx = Inteiro: valor da coordenada x do canto superior esquerdo da área original
copy__params__sy = Inteiro: valor da coordenada y do canto superior esquerdo da área original
copy__params__sw = Inteiro: largura (width) da imagem de origem
copy__params__sh = Inteiro: altura (height) da imagem de origem
copy__params__dx = Inteiro: valor da coordenada y do canto superior esquerdo da área de destino
copy__params__dy = Inteiro: valor da coordenada y do canto superior esquerdo da área de destino
copy__params__dw = Inteiro: largura (width) da imagem de destino
copy__params__dh = Inteiro: altura (height) da imagem de destino
mask__description__0 = Esconde parte de uma imagem carregando outra imagem e usando seu canal alpha como canal alpha desta imagem. As máscaras são cumulativas.
mask__params__srcImage = p5.Imagem: imagem de origem
filter__description__0 = Aplica um filtro de imagem a uma <a href="#/p5.Image"> p5.Image </a>
filter__description__1 = THRESHOLD Converte a imagem em pixels preto e branco, dependendo se eles estão acima ou abaixo do limite definido pelo parâmetro de (level) nível. O parâmetro deve estar entre 0 (preto) e 1 (branco). Se nenhum valor for especificado, o valor 0,5 é definido por padrão.
filter__description__2 = GRAY Converte as cores da imagem em tons de cinza equivalentes. Nenhum parâmetro é usado.
filter__description__3 = OPAQUE Define o canal alpha como totalmente opaco. Nenhum parâmetro é usado.
filter__description__4 = INVERT Define cada pixel para o seu valor inverso. Nenhum parâmetro é usado.
filter__description__5 = POSTERIZE Limita cada canal da imagem ao número de cores especificado como parâmetro. Os valores do parâmetro podem ser definidos entre 2 e 255, mas os resultados são mais perceptíveis nas faixas inferiores.
filter__description__6 = BLUR aplica um desfoque gaussiano à imagem. O parâmetro nível define o valor do raio do desfoque desvio, ou quantos pixels na tela se misturam, portanto, um valor maior criará mais desfoque. Se nenhum parâmetro for usado o valor do raio de desfoque será 1, por definição.
filter__description__7 = ERODE Reduz as áreas claras. Nenhum parâmetro é usado.
filter__description__8 = DILATE Aumenta as áreas claras. Nenhum parâmetro é usado.
filter__description__9 = O método <code>filter()</code> não funciona no modo WEBGL. Um efeito semelhante pode ser obtido no modo WEBGL usando shaders personalizados. Adam Ferriss escreveu uma <a href="https://github.com/aferriss/p5jsShaderExamples" target='_blank'> seleção de exemplos de shaders </a> que contém muitos dos efeitos presentes nos exemplos de filtro.
filter__params__filterType = THRESHOLD, GRAY, OPAQUE, INVERT, · POSTERIZE, BLUR, ERODE, DILATE ou BLUR. Veja Filters.js para documentação de cada filtro disponível.
filter__params__filterParam = Número (opcional): este parâmetro varia de acordo com o filtro, veja a descrição acima.
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
blend__params__blendMode = Constante: o modo de mesclagem. São aceitos os valores:  BLEND, DARKEST, LIGHTEST, DIFFERENCE, MULTIPLY, EXCLUSION, SCREEN, REPLACE, OVERLAY, HARD_LIGHT, SOFT_LIGHT, DODGE, BURN, ADD ou NORMAL.  Veja mais onformações sobre mesclagem em canvas<a href="http://blogs.adobe.com/webplatform/2013/01/28/blending-features-in-canvas/"> aqui </a>
save__description__0 = Salva a imagem em um arquivo e força o navegador a fazer o download. Aceita duas strings para nome de arquivo e extensão de arquivo. Oferece suporte a png (padrão), jpg e gif. Observe que o arquivo só será baixado como um GIF animado se p5.Image tiver sido carregado de um arquivo GIF.
save__params__filename = String: dá um nome ao seu arquivo
save__params__extension = String: 'png' ou 'jpg'
reset__description__0 = Inicia um GIF animado no estado inicial.
getCurrentFrame__description__0 = Obtém o índice do frame atualmente visível em um GIF animado.
getCurrentFrame__returns = Número: o índice do frame atualmente em exibição no GIF animado
setFrame__description__0 = Define o índice do frame que está atualmente visível em um GIF animado
setFrame__params__index = Número: o índice do frame que deve ser exibido
numFrames__description__0 = Retorna o número de frames em um GIF animado
numFrames__returns = Número:
play__description__0 = Reproduz um GIF animado que foi pausado com <a href="#/p5.Image/pause"> pausar() </a>
pause__description__0 = Pausa um GIF animado.
delay__description__0 = Altera o delay entre os frames em um GIF animado. Existe um segundo parâmetro opcional que permite alterar o delay de apenas um quadro, indicanco seu index. Se nenhum index for fornecido, todos os frames terão o novo delay.
delay__params__d = Número: a quantidade em milissegundos de delay entre os frames
delay__params__index = Número (opcional): o index do quadro que terá o valor de delay alterado
