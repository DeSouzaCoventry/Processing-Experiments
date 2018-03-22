// Ben DeSouza
// 15/03/18
// Transferring Arduino To Processing
// This will take in what I have coded in Arduino to Processing

import processing.serial.*;
Serial myPort;
int val;

void setup(){
  size(400, 200);
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
  fill(0,0,255);
}

void draw(){
  
}

void keyPressed(){
  
}

void mousePressed() {
  fill (0, 255, 0);
  myPort.write('Y');
}

void mouseReleased() {
  fill (255, 0, 0);
  myPort.write('N');
}