description__0 = Amplitude measures volume between 0.0 and 1.0. Listens to all p5sound by default, or use setInput() to listen to a specific sound source. Accepts an optional smoothing value, which defaults to 0.
params__smoothing = Number: (Optional) between 0.0 and .999 to smooth  amplitude readings (defaults to 0)
setInput__description__0 = Connects to the p5sound instance (main output) by default. Optionally, you can pass in a specific source (i.e. a soundfile).
setInput__params__snd = SoundObject|undefined: (Optional) set the sound source  (optional, defaults to  main output)
setInput__params__smoothing = Number|undefined: (Optional) a range between 0.0 and 1.0  to smooth amplitude readings
getLevel__description__0 = Returns a single Amplitude reading at the moment it is called. For continuous readings, run in the draw loop.
getLevel__returns = Number: Amplitude as a number between 0.0 and 1.0
getLevel__params__channel = Number: (Optional) Optionally return only channel 0 (left) or 1 (right)
toggleNormalize__description__0 = Determines whether the results of Amplitude.process() will be Normalized. To normalize, Amplitude finds the difference the loudest reading it has processed and the maximum amplitude of 1.0. Amplitude adds this difference to all values to produce results that will reliably map between 0.0 and 1.0. However, if a louder moment occurs, the amount that Normalize adds to all the values will change. Accepts an optional boolean parameter (true or false). Normalizing is off by default.
toggleNormalize__params__boolean = Boolean: (Optional) set normalize to true (1) or false (0)
smooth__description__0 = Smooth Amplitude analysis by averaging with the last analysis frame. Off by default.
smooth__params__set = Number: smoothing from 0.0 <= 1
