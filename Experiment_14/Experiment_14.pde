// Ben DeSouza
// 15/03/18
// Transferring Arduino To Processing
// This will register the work in Ardunio to respond in Processing

import processing.serial.*;
Serial myPort;
float inValue = 0;

void setup(){
  size(400, 200);
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil('\n');
}

void draw(){
  background(0);
  fill(0,0,255);
  ellipse(width/2, height/2, inValue, inValue); //The inValue codes are the one's which change according to the sensor
}
void serialEvent (Serial myPort) {
  //Gets the ASCII string
  String inString = myPort.readStringUntil('\n');
  if (inString != null)
  inString = trim(inString);
  inValue = float(inString);
  println(inValue);
  inValue = map(inValue, 0, 1023, 0, height);
}