description__0 = Panner3D is based on the <a title="Web Audio Panner docs" href= "https://developer.mozilla.org/en-US/docs/Web/API/PannerNode"> Web Audio Spatial Panner Node</a>. This panner is a spatial processing node that allows audio to be positioned and oriented in 3D space.
description__1 = The position is relative to an <a title="Web Audio Listener docs" href= "https://developer.mozilla.org/en-US/docs/Web/API/AudioListener"> Audio Context Listener</a>, which can be accessed by <code>p5.soundOut.audiocontext.listener</code>
panner__description__0 = <a title="Web Audio Panner docs" href= "https://developer.mozilla.org/en-US/docs/Web/API/PannerNode"> Web Audio Spatial Panner Node</a>
panner__description__1 = Properties include  <a href="https://www.w3.org/TR/webaudio/#idl-def-PanningModelType">Panning Model</a>  : "equal power" or "HRTF"  <a href="https://www.w3.org/TR/webaudio/#idl-def-DistanceModelType">DistanceModel</a> : "linear", "inverse", or "exponential"
process__description__0 = Connect an audio sorce
process__params__src = Object: Input source
set__description__0 = Set the X,Y,Z position of the Panner
set__returns = Array: Updated x, y, z values as an array
set__params__xVal = Number
set__params__yVal = Number
set__params__zVal = Number
set__params__time = Number
positionX__description__0 = Getter and setter methods for position coordinates
positionX__returns = Number: updated coordinate value
positionY__description__0 = Getter and setter methods for position coordinates
positionY__returns = Number: updated coordinate value
positionZ__description__0 = Getter and setter methods for position coordinates
positionZ__returns = Number: updated coordinate value
orient__description__0 = Set the X,Y,Z position of the Panner
orient__returns = Array: Updated x, y, z values as an array
orient__params__xVal = Number
orient__params__yVal = Number
orient__params__zVal = Number
orient__params__time = Number
orientX__description__0 = Getter and setter methods for orient coordinates
orientX__returns = Number: updated coordinate value
orientY__description__0 = Getter and setter methods for orient coordinates
orientY__returns = Number: updated coordinate value
orientZ__description__0 = Getter and setter methods for orient coordinates
orientZ__returns = Number: updated coordinate value
setFalloff__description__0 = Set the rolloff factor and max distance
setFalloff__params__maxDistance = Number (Optional)
setFalloff__params__rolloffFactor = Number (Optional)
maxDist__description__0 = Maxium distance between the source and the listener
maxDist__returns = Number: updated value
maxDist__params__maxDistance = Number
rollof__description__0 = How quickly the volume is reduced as the source moves away from the listener
rollof__returns = Number: updated value
rollof__params__rolloffFactor = Number
