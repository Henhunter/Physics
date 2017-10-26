public class Ball {
  MainWindow MW;
  PVector ballVector;
  PVector addGravityVector;
  PVector velocity = new PVector(0, 0);
  float gravity = 1.01;
  boolean mouseInCircle = false;
  
//Constructor for Ball
  Ball(int x, int y, MainWindow _MW) {
    MW = _MW;
    ballVector = new PVector(x, y);
  }

//Add gravity force to Ball
  public void Gravity() {
    PVector colDetect = MW.checkCollisions(this);
    if (colDetect == null) {
      if (velocity.y>0) {
        velocity.y = velocity.y*gravity;
      } else if (velocity.y<-0.2) {
        velocity.y = velocity.y - velocity.y*(gravity-1);
      } else {
        velocity.y = 0.1;
      }
    } else {
      velocity.y=-velocity.y/colDetect.y;
    }
    addGravityVector = new PVector(0, velocity.y);
    ballVector.add(addGravityVector);
  }
  
  
  
// Mouse related actions
  public void mouseWasPressed()
  {
    float d = dist(ballVector.x, ballVector.y, mouseX, mouseY); 
    if (d<50) {
      mouseInCircle = true;
    } else {
      mouseInCircle = false;
    }
  }
  public void mouseWasReleased()
  {
    mouseInCircle = false;
  }

//drawing the Ball
  public void Draw() {
    ellipse(ballVector.x, ballVector.y, 50, 50);
  }
}