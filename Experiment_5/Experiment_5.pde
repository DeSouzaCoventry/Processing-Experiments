import processing.video.*;

// Ben DeSouza
// 07/02/18
// Capture Recording
// Using processing to import a live image

Capture vid; // To enable the capture of what appears on webcam

void setup(){
  size (1280,720);
  background(0);
  
  String[] cameras = Capture.list();
  printArray(cameras);
  //   new camera  this, width, height, framerate
  vid= new Capture(this,1280,720,30); // Determines the quality of the video
  vid.start();
}


void draw(){
  image(vid,0,0); 
}

void captureEvent(Capture vid){
  vid.read();
}
void keyPressed(){
  
}