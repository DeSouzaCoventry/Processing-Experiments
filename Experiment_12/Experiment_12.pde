// Ben DeSouza
// 22/02/18
// Experiment Picture Controls
// Using processing to control a loaded image on screen
Human person;

void setup(){
  size(800,800);
  background(0);
  person = new Human(0,0);
}

void draw(){
  // background(0); // Prevents multiple circles being generated
  translate(width/2,height/2);
  person.update();
  person.applyForce(new PVector(0,0.2)); // Applies the gravity
  person.display();
}

void keyPressed(){
  switch(keyCode){
    case(UP) :
    person.applyForce(new PVector(0,-5));
    break;
    
    case(DOWN) :
    person.applyForce(new PVector(0,5));
    break;
    
    case(RIGHT) :
    person.applyForce(new PVector(5,0));
    break;
    
    case(LEFT) :
    person.applyForce(new PVector(-5,0));
    break;
  }
 }