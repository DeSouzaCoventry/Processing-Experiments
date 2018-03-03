import processing.video.*;

// Ben DeSouza
// 07/02/18
// Capture Recording
// Using processing to import a live image, but drawn in

Capture vid;

void setup(){
  size (1280,720);
  background(0);
  
  String[] cameras = Capture.list();
  printArray(cameras);
  //   new camera  this, width, height, framerate
  vid= new Capture(this,1280,720,30);
  vid.start();
}


void draw(){
for (int i =0; i < 300; i ++) {
    float x =random(width);
    float y =random(height);
    color c =vid.get(int(x), int(y)); // Make the shapes that form recognise the colour seen via webcam
    fill(c);
    ellipse (x, y, 10, 10); // Determines the shapes that will form on screen
  }
  // Displays raw video feed
  // Image(vid,0,0)
}

void captureEvent(Capture vid){
  vid.read();
}
void keyPressed(){
  
}