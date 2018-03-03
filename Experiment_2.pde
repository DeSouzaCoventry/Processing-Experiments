// Ben DeSouza
// 07/02/18
// Popping Circles
// Keep clicking and you'll get more circles

// float(x=0,y=0,r=0,g=0,b=0) So that there is no set value
float x =0;
float y =0;

float r =0;
float g =0;
float b =0;


void setup() {
  /// size(Height,Width), background (R,G,B)
  size(800, 600);
  background(81, 159, 222);
}


void draw() {
// x =random(0, width), y =random(0, height), 
// r =random(0,255), g =random(0,255), b =random(0,255) So the colour values can be anything
  x =random(0, width);
  y =random(0, height);

  r =random(0, 255);
  g =random(0, 255);
  b =random(0, 255);
// if (mousePressed) fill r,g,b ellipse (x,y,100,100) noStroke()
  if (mousePressed) {
    fill(r, g, b);
    ellipse(x, y, 100, 100);
    noStroke();
  }
}


void keyPressed() {
  // saveFrame("experimentsketch-###.jpg") So I can take a screenshot with the spacebar and automatically save it, background(R,G,B)
  saveFrame("experimentsketch-###.jpg");
  background(81, 159, 222);
}