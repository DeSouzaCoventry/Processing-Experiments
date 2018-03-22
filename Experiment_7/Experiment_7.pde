import processing.video.*;

// Ben DeSouza
// 07/02/18
// Capture Pink Recording
// Using processing to import a live image, but made it pink

Capture vid;

void setup(){
  size (1280,720); // Determines the size of the video canvas
  background(0);
  
  String[] cameras = Capture.list();
  printArray(cameras);
  //   new camera  this, width, height, framerate
  vid= new Capture(this,1280,720,30);
  vid.start();
}


void draw(){
  
  loadPixels(); 
  
    for (int i =0; i < 300; i ++) {
    float rx =random(width);
    float ry =random(height);
    
    //color c =vid.get(int(x), int(y));
    //fill(c);
    
    for (int x = 0; x < vid.width; x++) {
    for (int y = 0; y < vid.height; y++) {
    int location = x + y * vid.width;
    
    float r = red(vid.pixels[location]);
    float g = green(vid.pixels[location]);
    float b = blue(vid.pixels[location]);
    
    r = r*2;
    g = 0;
    b = b*2;
    // Makes what is on screen appear pink
    color c = color(r,g,b);
    pixels[location] = c;
    }
    }
    noStroke();
    ellipse (rx, ry, 10, 10);
  }
  // Displays raw video feed
  // Image(vid,0,0)
  
  updatePixels();
  
}

void captureEvent(Capture vid){
  vid.read();
}
void keyPressed(){
  
}