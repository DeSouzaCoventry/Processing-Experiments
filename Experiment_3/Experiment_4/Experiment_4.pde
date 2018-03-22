// Ben DeSouza
// 07/02/18
// Glitchy Yuri DDLC
// Yuri from DDLC has just gone really glitchy


PImage myImg;

void setup(){
  // PImage myIng, size(800,600), background(81,159,222), myIMG =loadImage("251511791012212.png"), frameRate(60)
 size(800,600);
 background(81,159,222);
 myImg =loadImage("251511791012212.png");
 frameRate(60);
}

void draw(){
  for (int i =0; i < 100; i ++) {
    float x =random(width);
    float y =random(height);
    color c =myImg.get(int(x), int(y));
    fill(c);
    ellipse (x, y, 5, 25);
  }
}

void keyPressed(){
  // saveFrame("experimentsketch-###.jpg"), background(81, 159, 222)
  saveFrame("experimentsketch-###.jpg");
  background(81, 159, 222);
}