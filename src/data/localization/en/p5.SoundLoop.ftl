description__0 = SoundLoop
params__callback = Function: this function will be called on each iteration of theloop
params__interval = Number|String: (Optional) amount of time (if a number) or beats (if a string, following <a href = "https://github.com/Tonejs/Tone.js/wiki/Time">Tone.Time</a> convention) for each iteration of the loop. Defaults to 1 second.
bpm__description__0 = Getters and Setters, setting any paramter will result in a change in the clock's frequency, that will be reflected after the next callback beats per minute (defaults to 60)
timeSignature__description__0 = number of quarter notes in a measure (defaults to 4)
interval__description__0 = length of the loops interval
iterations__description__0 = how many times the callback has been called so far
musicalTimeMode__description__0 = musicalTimeMode uses <a href = "https://github.com/Tonejs/Tone.js/wiki/Time">Tone.Time</a> convention true if string, false if number
maxIterations__description__0 = Set a limit to the number of loops to play. defaults to Infinity
start__description__0 = Start the loop
start__params__timeFromNow = Number: (Optional) schedule a starting time
stop__description__0 = Stop the loop
stop__params__timeFromNow = Number: (Optional) schedule a stopping time
pause__description__0 = Pause the loop
pause__params__timeFromNow = Number: (Optional) schedule a pausing time
syncedStart__description__0 = Synchronize loops. Use this method to start two or more loops in synchronization or to start a loop in synchronization with a loop that is already playing This method will schedule the implicit loop in sync with the explicit master loop i.e. loopToStart.syncedStart(loopToSyncWith)
syncedStart__params__otherLoop = Object: a p5.SoundLoop to sync with
syncedStart__params__timeFromNow = Number: (Optional) Start the loops in sync after timeFromNow seconds
