//Ball inherits Item class and thereby gets Gravity

public class Ball extends Item{
  MainWindow MW;
  boolean mouseInCircle = false;
  
//Constructor for Ball
  Ball(int x, int y, MainWindow _MW) {
    MW = _MW;
    itemVector = new PVector(x, y);
  }
  
// Mouse related actions
  public void mouseWasPressed()
  {
    float d = dist(itemVector.x, itemVector.y, mouseX, mouseY); 
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
    ellipse(itemVector.x, itemVector.y, 50, 50);
    //check for collisions
    PVector colDetect = MW.checkCollisions(this);
    if (colDetect != null) {
      velocity.y=-velocity.y/colDetect.y; //<>//
    }
  }
}