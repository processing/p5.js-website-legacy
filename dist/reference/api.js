YUI.add("yuidoc-meta", function(Y) {
   Y.YUIDoc = { meta: {
    "classes": [
        "p5",
        "p5.Amplitude",
        "p5.AudioIn",
        "p5.Color",
        "p5.Convolver",
        "p5.Delay",
        "p5.Element",
        "p5.Env",
        "p5.FFT",
        "p5.File",
        "p5.Filter",
        "p5.Font",
        "p5.Gain",
        "p5.Graphics",
        "p5.Image",
        "p5.MediaElement",
        "p5.Noise",
        "p5.Oscillator",
        "p5.Part",
        "p5.PeakDetect",
        "p5.Phrase",
        "p5.Pulse",
        "p5.Renderer",
        "p5.RendererGL",
        "p5.Reverb",
        "p5.Score",
        "p5.Signal",
        "p5.SoundFile",
        "p5.SoundRecorder",
        "p5.Table",
        "p5.TableRow",
        "p5.Vector",
        "p5.XML",
        "p5.dom",
        "p5.sound"
    ],
    "modules": [
        "2D Primitives",
        "3D Models",
        "3D Primitives",
        "Acceleration",
        "Array Functions",
        "Attributes",
        "Calculation",
        "Camera",
        "Color",
        "Constants",
        "Conversion",
        "Creating & Reading",
        "Curves",
        "DOM",
        "Data",
        "Environment",
        "Events",
        "Font",
        "IO",
        "Image",
        "Input",
        "Keyboard",
        "Lights",
        "Lights, Camera",
        "Loading & Displaying",
        "Material",
        "Math",
        "Mouse",
        "Noise",
        "Output",
        "Pixels",
        "Random",
        "Rendering",
        "Setting",
        "Shape",
        "String Functions",
        "Structure",
        "Table",
        "Time & Date",
        "Touch",
        "Transform",
        "Trigonometry",
        "Typography",
        "Vertex",
        "XML",
        "p5.dom",
        "p5.sound"
    ],
    "allModules": [
        {
            "displayName": "2D Primitives",
            "name": "2D Primitives"
        },
        {
            "displayName": "3D Models",
            "name": "3D Models"
        },
        {
            "displayName": "3D Primitives",
            "name": "3D Primitives"
        },
        {
            "displayName": "Acceleration",
            "name": "Acceleration"
        },
        {
            "displayName": "Array Functions",
            "name": "Array Functions"
        },
        {
            "displayName": "Attributes",
            "name": "Attributes"
        },
        {
            "displayName": "Calculation",
            "name": "Calculation"
        },
        {
            "displayName": "Camera",
            "name": "Camera"
        },
        {
            "displayName": "Color",
            "name": "Color"
        },
        {
            "displayName": "Constants",
            "name": "Constants"
        },
        {
            "displayName": "Conversion",
            "name": "Conversion"
        },
        {
            "displayName": "Creating & Reading",
            "name": "Creating & Reading",
            "description": "<p>We define colors to be immutable objects. Each color stores the color mode\nand level maxes that applied at the time of its construction. These are\nused to interpret the input arguments and to format the output e.g. when\nsaturation() is requested.</p>\n<p>Internally we store an array representing the ideal RGBA values in floating\npoint form, normalized from 0 to 1. From this we calculate the closest\nscreen color (RGBA levels from 0 to 255) and expose this to the renderer.</p>\n<p>We also cache normalized, floating point components of the color in various\nrepresentations as they are calculated. This is done to prevent repeating a\nconversion that has already been performed.</p>\n"
        },
        {
            "displayName": "Curves",
            "name": "Curves"
        },
        {
            "displayName": "Data",
            "name": "Data"
        },
        {
            "displayName": "DOM",
            "name": "DOM",
            "description": "<p>Base class for all elements added to a sketch, including canvas,\ngraphics buffers, and other HTML elements. Methods in blue are\nincluded in the core functionality, methods in brown are added\nwith the <a href=\"http://p5js.org/reference/#/libraries/p5.dom\">p5.dom\nlibrary</a>.\nIt is not called directly, but p5.Element\nobjects are created by calling createCanvas, createGraphics,\nor in the p5.dom library, createDiv, createImg, createInput, etc.</p>\n"
        },
        {
            "displayName": "Environment",
            "name": "Environment"
        },
        {
            "displayName": "Events",
            "name": "Events"
        },
        {
            "displayName": "Font",
            "name": "Font",
            "description": "<p>This module defines the p5.Font class and functions for\ndrawing text to the display canvas.</p>\n"
        },
        {
            "displayName": "Image",
            "name": "Image",
            "description": "<p>Creates a new p5.Image. A p5.Image is a canvas backed representation of an\nimage.\n<br><br>\np5 can display .gif, .jpg and .png images. Images may be displayed\nin 2D and 3D space. Before an image is used, it must be loaded with the\nloadImage() function. The p5.Image class contains fields for the width and\nheight of the image, as well as an array called pixels[] that contains the\nvalues for every pixel in the image.\n<br><br>\nThe methods described below allow easy access to the image&#39;s pixels and\nalpha channel and simplify the process of compositing.\n<br><br>\nBefore using the pixels[] array, be sure to use the loadPixels() method on\nthe image to make sure that the pixel data is properly loaded.</p>\n"
        },
        {
            "displayName": "Input",
            "name": "Input"
        },
        {
            "displayName": "IO",
            "name": "IO"
        },
        {
            "displayName": "Keyboard",
            "name": "Keyboard"
        },
        {
            "displayName": "Lights",
            "name": "Lights"
        },
        {
            "displayName": "Lights, Camera",
            "name": "Lights, Camera"
        },
        {
            "displayName": "Loading & Displaying",
            "name": "Loading & Displaying"
        },
        {
            "displayName": "Material",
            "name": "Material"
        },
        {
            "displayName": "Math",
            "name": "Math",
            "description": "<p>A class to describe a two or three dimensional vector, specifically\na Euclidean (also known as geometric) vector. A vector is an entity\nthat has both magnitude and direction. The datatype, however, stores\nthe components of the vector (x, y for 2D, and x, y, z for 3D). The magnitude\nand direction can be accessed via the methods mag() and heading().\n<br><br>\nIn many of the p5.js examples, you will see p5.Vector used to describe a\nposition, velocity, or acceleration. For example, if you consider a rectangle\nmoving across the screen, at any given instant it has a position (a vector\nthat points from the origin to its location), a velocity (the rate at which\nthe object&#39;s position changes per time unit, expressed as a vector), and\nacceleration (the rate at which the object&#39;s velocity changes per time\nunit, expressed as a vector).\n<br><br>\nSince vectors represent groupings of values, we cannot simply use\ntraditional addition/multiplication/etc. Instead, we&#39;ll need to do some\n&quot;vector&quot; math, which is made easy by the methods inside the p5.Vector class.</p>\n"
        },
        {
            "displayName": "Mouse",
            "name": "Mouse"
        },
        {
            "displayName": "Noise",
            "name": "Noise"
        },
        {
            "displayName": "Output",
            "name": "Output"
        },
        {
            "displayName": "p5.dom",
            "name": "p5.dom",
            "description": "<p><p>The web is much more than just canvas and p5.dom makes it easy to interact\nwith other HTML5 objects, including text, hyperlink, image, input, video,\naudio, and webcam.</p></p>\n<p><p>There is a set of creation methods, DOM manipulation methods, and\nan extended p5.Element that supports a range of HTML elements. See the\n<a href=\"https://github.com/processing/p5.js/wiki/Beyond-the-canvas\">\nbeyond the canvas tutorial</a> for a full overview of how this addon works.</p>\n<p><p>Methods and properties shown in black are part of the p5.js core, items in\nblue are part of the p5.dom library. You will need to include an extra file\nin order to access the blue functions. See the\n<a href=\"http://p5js.org/libraries/#using-a-library\">using a library</a>\nsection for information on how to include this library. p5.dom comes with\n<a href=\"http://p5js.org/download\">p5 complete</a> or you can download the single file\n<a href=\"https://raw.githubusercontent.com/lmccart/p5.js/master/lib/addons/p5.dom.js\">\nhere</a>.</p></p>\n<p><p>See <a href=\"https://github.com/processing/p5.js/wiki/Beyond-the-canvas\">tutorial: beyond the canvas</a>\nfor more info on how to use this libary.</a></p>\n"
        },
        {
            "displayName": "p5.sound",
            "name": "p5.sound",
            "description": "<p>p5.sound extends p5 with <a href=\"http://caniuse.com/audio-api\"\ntarget=\"_blank\">Web Audio</a> functionality including audio input,\nplayback, analysis and synthesis.\n<br/><br/>\n<a href=\"#/p5.SoundFile\"><b>p5.SoundFile</b></a>: Load and play sound files.<br/>\n<a href=\"#/p5.Amplitude\"><b>p5.Amplitude</b></a>: Get the current volume of a sound.<br/>\n<a href=\"#/p5.AudioIn\"><b>p5.AudioIn</b></a>: Get sound from an input source, typically\n  a computer microphone.<br/>\n<a href=\"#/p5.FFT\"><b>p5.FFT</b></a>: Analyze the frequency of sound. Returns\n  results from the frequency spectrum or time domain (waveform).<br/>\n<a href=\"#/p5.Oscillator\"><b>p5.Oscillator</b></a>: Generate Sine,\n  Triangle, Square and Sawtooth waveforms. Base class of\n  <a href=\"#/p5.Noise\">p5.Noise</a> and <a href=\"#/p5.Pulse\">p5.Pulse</a>.\n  <br/>\n<a href=\"#/p5.Env\"><b>p5.Env</b></a>: An Envelope is a series\n  of fades over time. Often used to control an object&#39;s\n  output gain level as an &quot;ADSR Envelope&quot; (Attack, Decay,\n  Sustain, Release). Can also modulate other parameters.<br/>\n<a href=\"#/p5.Delay\"><b>p5.Delay</b></a>: A delay effect with\n  parameters for feedback, delayTime, and lowpass filter.<br/>\n<a href=\"#/p5.Filter\"><b>p5.Filter</b></a>: Filter the frequency range of a\n  sound.\n<br/>\n<a href=\"#/p5.Reverb\"><b>p5.Reverb</b></a>: Add reverb to a sound by specifying\n  duration and decay. <br/>\n<b><a href=\"#/p5.Convolver\">p5.Convolver</a>:</b> Extends\n<a href=\"#/p5.Reverb\">p5.Reverb</a> to simulate the sound of real\n  physical spaces through convolution.<br/>\n<b><a href=\"#/p5.SoundRecorder\">p5.SoundRecorder</a></b>: Record sound for playback \n  / save the .wav file.\n<b><a href=\"#/p5.Phrase\">p5.Phrase</a></b>, <b><a href=\"#/p5.Part\">p5.Part</a></b> and\n<b><a href=\"#/p5.Score\">p5.Score</a></b>: Compose musical sequences.\n<br/><br/>\np5.sound is on <a href=\"https://github.com/therewasaguy/p5.sound/\">GitHub</a>.\nDownload the latest version \n<a href=\"https://github.com/therewasaguy/p5.sound/blob/master/lib/p5.sound.js\">here</a>.</p>\n"
        },
        {
            "displayName": "Pixels",
            "name": "Pixels"
        },
        {
            "displayName": "Random",
            "name": "Random"
        },
        {
            "displayName": "Rendering",
            "name": "Rendering",
            "description": "<p>Thin wrapper around a renderer, to be used for creating a\ngraphics buffer object. Use this class if you need\nto draw into an off-screen graphics buffer. The two parameters define the\nwidth and height in pixels. The fields and methods for this class are\nextensive, but mirror the normal drawing API for p5.</p>\n"
        },
        {
            "displayName": "Setting",
            "name": "Setting"
        },
        {
            "displayName": "Shape",
            "name": "Shape"
        },
        {
            "displayName": "String Functions",
            "name": "String Functions"
        },
        {
            "displayName": "Structure",
            "name": "Structure"
        },
        {
            "displayName": "Table",
            "name": "Table",
            "description": "<p>Table objects store data with multiple rows and columns, much\nlike in a traditional spreadsheet. Tables can be generated from\nscratch, dynamically, or using data from an existing file.</p>\n"
        },
        {
            "displayName": "Time & Date",
            "name": "Time & Date"
        },
        {
            "displayName": "Touch",
            "name": "Touch"
        },
        {
            "displayName": "Transform",
            "name": "Transform"
        },
        {
            "displayName": "Trigonometry",
            "name": "Trigonometry"
        },
        {
            "displayName": "Typography",
            "name": "Typography"
        },
        {
            "displayName": "Vertex",
            "name": "Vertex"
        },
        {
            "displayName": "XML",
            "name": "XML",
            "description": "<p>XML is a representation of an XML object, able to parse XML code. Use\nloadXML() to load external XML files and create XML objects.</p>\n"
        }
    ]
} };
});