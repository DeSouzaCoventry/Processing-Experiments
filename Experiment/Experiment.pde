// Ben DeSouza
// 07/02/18
// Changing Triangle
// As you move the mouse, you'll find the triangles change colours

void setup(){
 // size(Height,Width), background(R,G,B)
 size(800,600);
 background(81,159,222);
}


void draw(){
  // fill(120,mouseX,mouseY,40), triangle (mouseX,mouseY,100,100,width/2,height/2) 
  //noStroke to delete the borders of the shape
  fill(120, mouseX,mouseY, 40);
  triangle(mouseX, mouseY, 100, 100,width/2,height/2);
  noStroke();
}


void keyPressed(){
  
}