// Ben DeSouza
// 15/02/18
// Sound Circle
// Using processing have a shape react to the recorded sounds

import processing.sound.*;

AudioIn input; // Any input device set by the system
Amplitude vol; // Reference to the volume

float scale =1;
float threshold = 60;



//PFont typeFace; // Loading the new font

void setup(){
  size(600,600);
  background(0);
  
  //typeFace = loadFont("Experiment.vlw"); // Filename of the chosen font
  //textSize(128); // Type of typeface
  //textFont(typeFace); // Size specification
  //textAlign(CENTER); // The text goes in the middle
  
  input = new AudioIn(this, 0); // Activates the microphone
  input.start(); 
  vol =new Amplitude(this); // Registers the sound as data
  vol.input(input);
  

}


void draw(){
  
  background(0); // So that after every sound, the shape minimises
  //println(vol.analyze());
  
  scale = map(vol.analyze(), 0.0, 1.0, 1, 300);
  println(scale);
  // map(what, min, max, new min, new max)
  
  fill(scale*2,0,255-scale); // So the colour changes
  ellipse(width/2, height/2, scale, scale);
  //fill(255);
  //stroke(255);
  //text("Itachi", width/2,height/2);
}