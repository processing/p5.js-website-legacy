/**
 * @name Loading Images. 
 * 
 * @description Processing applications can load images from the network. 
 */

 PImage img;

void setup() {
    size(640, 360);
    img = loadImage("https://processingfoundation.org/content/1-home/processing-web.png");
    noLoop();
}

void draw() {
    background(0);
    if (img != null) {
        for (int i = 0; i < 5; i++) {
            image(img, 0, img.height * i);
        }
    }
}
