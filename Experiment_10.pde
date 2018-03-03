// Ben DeSouza
// 22/02/18
// Blender Experiment
// Using Processing to see Blender files
PShape bo;

void setup(){
 // size(Height,Width, Enables 3D objects for viewing), background(R,G,B)
 size(800,600, P3D);
 background(0);
 bo = loadShape("Landscape Trial.obj");
}

void draw(){
  background(0);
  translate(width/2,height/2);
  scale(mouseX);
  rotateY(mouseY);
  rotateX(frameCount*0.01);
  shape(bo);
  lights();
}

void keyPressed(){
  
}