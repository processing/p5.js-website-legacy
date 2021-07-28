description__0 = A MonoSynth is used as a single voice for sound synthesis. This is a class to be used in conjunction with the PolySynth class. Custom synthetisers should be built inheriting from this class.
attack__description__0 = Getters and Setters
play__description__0 = Play tells the MonoSynth to start playing a note. This method schedules the calling of .triggerAttack and .triggerRelease.
play__params__note = String | Number: the note you want to play, specified as a  frequency in Hertz (Number) or as a midi  value in Note/Octave format ("C4", "Eb3"...etc")  See <a href = "https://github.com/Tonejs/Tone.js/wiki/Instruments">  Tone</a>. Defaults to 440 hz.
play__params__velocity = Number: (Optional) velocity of the note to play (ranging from 0 to 1)
play__params__secondsFromNow = Number: (Optional) time from now (in seconds) at which to play
play__params__sustainTime = Number: (Optional) time to sustain before releasing the envelope. Defaults to 0.15 seconds.
triggerAttack__description__0 = Trigger the Attack, and Decay portion of the Envelope. Similar to holding down a key on a piano, but it will hold the sustain level until you let go.
triggerAttack__params__note = String | Number: the note you want to play, specified as a  frequency in Hertz (Number) or as a midi  value in Note/Octave format ("C4", "Eb3"...etc")  See <a href = "https://github.com/Tonejs/Tone.js/wiki/Instruments">  Tone</a>. Defaults to 440 hz
triggerAttack__params__velocity = Number: (Optional) velocity of the note to play (ranging from 0 to 1)
triggerAttack__params__secondsFromNow = Number: (Optional) time from now (in seconds) at which to play
triggerRelease__description__0 = Trigger the release of the Envelope. This is similar to releasing the key on a piano and letting the sound fade according to the release level and release time.
triggerRelease__params__secondsFromNow = Number: time to trigger the release
setADSR__description__0 = Set values like a traditional <a href="https://en.wikipedia.org/wiki/Synthesizer#/media/File:ADSR_parameter.svg"> ADSR envelope </a>.
setADSR__params__attackTime = Number: Time (in seconds before envelope  reaches Attack Level
setADSR__params__decayTime = Number: (Optional) Time (in seconds) before envelope  reaches Decay/Sustain Level
setADSR__params__susRatio = Number: (Optional) Ratio between attackLevel and releaseLevel, on a scale from 0 to 1,  where 1.0 = attackLevel, 0.0 = releaseLevel.  The susRatio determines the decayLevel and the level at which the  sustain portion of the envelope will sustain.  For example, if attackLevel is 0.4, releaseLevel is 0,  and susAmt is 0.5, the decayLevel would be 0.2. If attackLevel is  increased to 1.0 (using <code>setRange</code>),  then decayLevel would increase proportionally, to become 0.5.
setADSR__params__releaseTime = Number: (Optional) Time in seconds from now (defaults to 0)
amp__description__0 = MonoSynth amp
amp__returns = Number: new volume value
amp__params__vol = Number: desired volume
amp__params__rampTime = Number: (Optional) Time to reach new volume
connect__description__0 = Connect to a p5.sound / Web Audio object.
connect__params__unit = Object: A p5.sound or Web Audio object
disconnect__description__0 = Disconnect all outputs
dispose__description__0 = Get rid of the MonoSynth and free up its resources / memory.
