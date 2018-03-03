// Ben DeSouza
// 07/02/18
// Yuri Erode DDLC
// Yuri from DDLC has just gone really trippy


PImage myImg;

void setup(){
  // PImage myIng, size(Height,Width), background(R,G,B), 
  // myIMG =loadImage("untitled.png"), frameRate(60) Refer to image file name to properly import
 size(800,600);
 background(81,159,222);
 myImg =loadImage("251511791012212.png");
 frameRate(60);
}


void draw(){
  // filter(ERODE) For the effect, tint(mouseX,0,mouseY) To change colour as the mouse moves
  filter(ERODE);
  tint(mouseX,0,mouseY);
  image(myImg,mouseX,mouseY);
}


void keyPressed(){
  // saveFrame("experimentsketch-###.jpg") So it screenshots and saves the image, background(R,G,B) When the space is pressed, it takes a screenshot
  saveFrame("experimentsketch-###.jpg");
  background(81, 159, 222);
}