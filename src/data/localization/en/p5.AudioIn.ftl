description__0 = Get audio from an input, i.e. your computer's microphone.
description__1 = Turn the mic on/off with the start() and stop() methods. When the mic is on, its volume can be measured with getLevel or by connecting an FFT object.
description__2 = If you want to hear the AudioIn, use the .connect() method. AudioIn does not connect to p5.sound output by default to prevent feedback.
description__3 = <em>Note: This uses the <a href="http://caniuse.com/stream">getUserMedia/ Stream</a> API, which is not supported by certain browsers. Access in Chrome browser is limited to localhost and https, but access over http may be limited.</em>
params__errorCallback = Function: (Optional) A function to call if there is an error  accessing the AudioIn. For example,  Safari and iOS devices do not  currently allow microphone access.
enabled__description__0 = Client must allow browser to access their microphone / audioin source. Default: false. Will become true when the client enables access.
amplitude__description__0 = Input amplitude, connect to it by default but not to master out
start__description__0 = Start processing audio input. This enables the use of other AudioIn methods like getLevel(). Note that by default, AudioIn is not connected to p5.sound's output. So you won't hear anything unless you use the connect() method.<br/>
start__description__1 = Certain browsers limit access to the user's microphone. For example, Chrome only allows access from localhost and over https. For this reason, you may want to include an errorCallback—a function that is called in case the browser won't provide mic access.
start__params__successCallback = Function: (Optional) Name of a function to call on  success.
start__params__errorCallback = Function: (Optional) Name of a function to call if  there was an error. For example,  some browsers do not support  getUserMedia.
stop__description__0 = Turn the AudioIn off. If the AudioIn is stopped, it cannot getLevel(). If re-starting, the user may be prompted for permission access.
connect__description__0 = Connect to an audio unit. If no parameter is provided, will connect to the main output (i.e. your speakers).<br/>
connect__params__unit = Object: (Optional) An object that accepts audio input,  such as an FFT
disconnect__description__0 = Disconnect the AudioIn from all audio units. For example, if connect() had been called, disconnect() will stop sending signal to your speakers.<br/>
getLevel__description__0 = Read the Amplitude (volume level) of an AudioIn. The AudioIn class contains its own instance of the Amplitude class to help make it easy to get a microphone's volume level. Accepts an optional smoothing value (0.0 < 1.0). <em>NOTE: AudioIn must .start() before using .getLevel().</em><br/>
getLevel__returns = Number: Volume level (between 0.0 and 1.0)
getLevel__params__smoothing = Number: (Optional) Smoothing is 0.0 by default.  Smooths values based on previous values.
amp__description__0 = Set amplitude (volume) of a mic input between 0 and 1.0. <br/>
amp__params__vol = Number: between 0 and 1.0
amp__params__time = Number: (Optional) ramp time (optional)
getSources__description__0 = Returns a list of available input sources. This is a wrapper for <a href="https://developer.mozilla.org/ en-US/docs/Web/API/MediaDevices/enumerateDevices" target="_blank"> MediaDevices.enumerateDevices() - Web APIs | MDN</a> and it returns a Promise.
getSources__returns = Promise: Returns a Promise that can be used in place of the callbacks, similar  to the enumerateDevices() method
getSources__params__successCallback = Function: (Optional) This callback function handles the sources when they  have been enumerated. The callback function  receives the deviceList array as its only argument
getSources__params__errorCallback = Function: (Optional) This optional callback receives the error  message as its argument.
setSource__description__0 = Set the input source. Accepts a number representing a position in the array returned by getSources(). This is only available in browsers that support  <a href="https://developer.mozilla.org/  en-US/docs/Web/API/MediaDevices/enumerateDevices" target="_blank">  navigator.mediaDevices.enumerateDevices()</a>
setSource__params__num = Number: position of input source in the array
