public class Ball {
  MainWindow MW;
  PVector ballVector;
  PVector addGravityVector;
  PVector velocity = new PVector(0,0);;
  float gravity = 1.01;
  boolean mouseInCircle = false;
  Ball(int x, int y, MainWindow _MW) {
    MW = _MW;
    ballVector = new PVector(x,y);
    ellipse(ballVector.x,ballVector.y,10,10);
     
  }
  public void Gravity(){
    PVector colDetect = MW.checkCollisions(this);
    if(colDetect == null){
      if(velocity.y>0){
      velocity.y = velocity.y*gravity;  
      }
      else if(velocity.y<-0.2){
       velocity.y = velocity.y - velocity.y*(gravity-1);        
      }
      else{
        velocity.y = 0.1;        
      }
    }
    else{
     velocity.y=-velocity.y/colDetect.y;
      
    }
     addGravityVector = new PVector(0,velocity.y);
     ballVector.add(addGravityVector);
  }
  
   public void mouseReleased(){
     mouseInCircle = false;
  }
  
  public void mouseMove(){
  if (mouseInCircle == true)
  {
    ballVector.x = mouseX;
    ballVector.y = mouseY;
  }
  }
  
  public void Draw(){
    ellipse(ballVector.x,ballVector.y,10,10);
    
  }  
}
public void mousePressed(){
    float d = dist(MW.ball.ballVector.x,MW.ball.ballVector.y,mouseX,mouseY);
    if(d<10){
    MW.ball.mouseInCircle = true;
    }
    else{
    MW.ball.mouseInCircle = false;
    }
  }