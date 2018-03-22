

class Human {
  
  float x;
  float y;
  
  PVector vel; // Velocity (Direction)
  PVector acc; // Acceleration (Initial Force)
  PVector loc; // Location
  
  Human(float px, float py){
    x = px;
    y = py;
    
    vel = new PVector(0,0);
    acc = new PVector(1,1);
    loc = new PVector(x,y);
  }
  
  void update(){
    
    vel.add(acc);
    loc.add(vel);
    acc.mult(0); 
  }
  
  void display(){
    fill(0,0,255);
    ellipse(loc.x,loc.y,100,100); // Draw at my set X and Y values
  }
  
  void applyForce(PVector f){
    acc.add(f);
    acc.mult(0.5);
  }
}