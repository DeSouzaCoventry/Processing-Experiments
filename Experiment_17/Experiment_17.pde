// Ben DeSouza
// 15/03/18
// Transferring Arduino To Processing
// This will register the work in Ardunio to respond in Processing

import processing.serial.*;
Serial myPort;
float sensor1 = 0;
float sensor2 = 0;

void setup() {
  size(400, 200);
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.bufferUntil(',');
}

void draw() {
  background(0);
  fill(0, 0, 255);
  ellipse(width*0.3, height/2, sensor1, sensor1);
  fill(0, 255, 0);
  ellipse(width*0.7, height/2, sensor2, sensor2);//The sensor codes are the one's which change according to the sensor
}
void serialEvent (Serial myPort) {
  String inString = myPort.readStringUntil(',');
  String items[] = split(inString, ':');
  if (items.length > 1) {
    String label = trim(items[0]);
    String val = split(items[1], ',')[0];

    if (label.equals("S")) {
     // println(val);
      if (float(val) > 1.0){
        println("DOWN DETECTED");
      }
    }
    
  }
}