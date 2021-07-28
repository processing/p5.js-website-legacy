description__0 = PeakDetect works in conjunction with p5.FFT to look for onsets in some or all of the frequency spectrum.
description__1 = To use p5.PeakDetect, call <code>update</code> in the draw loop and pass in a p5.FFT object.
description__2 = You can listen for a specific part of the frequency spectrum by setting the range between <code>freq1</code> and <code>freq2</code>.
description__3 = <code>threshold</code> is the threshold for detecting a peak, scaled between 0 and 1. It is logarithmic, so 0.1 is half as loud as 1.0.
description__4 = The update method is meant to be run in the draw loop, and <b>frames</b> determines how many loops must pass before another peak can be detected. For example, if the frameRate() = 60, you could detect the beat of a 120 beat-per-minute song with this equation: <code> framesPerPeak = 60 / (estimatedBPM / 60 );</code>
description__5 = Based on example contribtued by @b2renger, and a simple beat detection explanation by <a href="http://www.airtightinteractive.com/2013/10/making-audio-reactive-visuals/" target="_blank">Felix Turner</a>.
params__freq1 = Number: (Optional) lowFrequency - defaults to 20Hz
params__freq2 = Number: (Optional) highFrequency - defaults to 20000 Hz
params__threshold = Number: (Optional) Threshold for detecting a beat between 0 and 1  scaled logarithmically where 0.1 is 1/2 the loudness  of 1.0. Defaults to 0.35.
params__framesPerPeak = Number: (Optional) Defaults to 20.
isDetected__description__0 = isDetected is set to true when a peak is detected.
update__description__0 = The update method is run in the draw loop.
update__description__1 = Accepts an FFT object. You must call .analyze() on the FFT object prior to updating the peakDetect because it relies on a completed FFT analysis.
update__params__fftObject = p5.FFT: A p5.FFT object
onPeak__description__0 = onPeak accepts two arguments: a function to call when a peak is detected. The value of the peak, between 0.0 and 1.0, is passed to the callback.
onPeak__params__callback = Function: Name of a function that will  be called when a peak is  detected.
onPeak__params__val = Object: (Optional) Optional value to pass  into the function when  a peak is detected.
