description__0 = p5.Convolver extends p5.Reverb. It can emulate the sound of real physical spaces through a process called <a href=" https://en.wikipedia.org/wiki/Convolution_reverb#Real_space_simulation"> convolution</a>.
description__1 = Convolution multiplies any audio input by an "impulse response" to simulate the dispersion of sound over time. The impulse response is generated from an audio file that you provide. One way to generate an impulse response is to pop a balloon in a reverberant space and record the echo. Convolution can also be used to experiment with sound.
description__2 = Use the method <code>createConvolution(path)</code> to instantiate a p5.Convolver with a path to your impulse response audio file.
params__path = String: path to a sound file
params__callback = Function: (Optional) function to call when loading succeeds
params__errorCallback = Function: (Optional) function to call if loading fails.  This function will receive an error or  XMLHttpRequest object with information  about what went wrong.
convolverNode__description__0 = Internally, the p5.Convolver uses the a <a href="http://www.w3.org/TR/webaudio/#ConvolverNode"> Web Audio Convolver Node</a>.
impulses__description__0 = If you load multiple impulse files using the .addImpulse method, they will be stored as Objects in this Array. Toggle between them with the <code>toggleImpulse(id)</code> method.
process__description__0 = Connect a source to the convolver.
process__params__src = Object: p5.sound / Web Audio object with a sound  output.
addImpulse__description__0 = Load and assign a new Impulse Response to the p5.Convolver. The impulse is added to the <code>.impulses</code> array. Previous impulses can be accessed with the <code>.toggleImpulse(id)</code> method.
addImpulse__params__path = String: path to a sound file
addImpulse__params__callback = Function: function (optional)
addImpulse__params__errorCallback = Function: function (optional)
resetImpulse__description__0 = Similar to .addImpulse, except that the <code>.impulses</code> Array is reset to save memory. A new <code>.impulses</code> array is created with this impulse as the only item.
resetImpulse__params__path = String: path to a sound file
resetImpulse__params__callback = Function: function (optional)
resetImpulse__params__errorCallback = Function: function (optional)
toggleImpulse__description__0 = If you have used <code>.addImpulse()</code> to add multiple impulses to a p5.Convolver, then you can use this method to toggle between the items in the <code>.impulses</code> Array. Accepts a parameter to identify which impulse you wish to use, identified either by its original filename (String) or by its position in the <code>.impulses </code> Array (Number).<br/> You can access the objects in the .impulses Array directly. Each Object has two attributes: an <code>.audioBuffer</code> (type: Web Audio <a href=" http://webaudio.github.io/web-audio-api/#the-audiobuffer-interface"> AudioBuffer)</a> and a <code>.name</code>, a String that corresponds with the original filename.
toggleImpulse__params__id = String|Number: Identify the impulse by its original filename  (String), or by its position in the  <code>.impulses</code> Array (Number).
