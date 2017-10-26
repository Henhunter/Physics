public class MainWindow {
Ball ball;
Ball ball2;
WallsFloorCeiling floor;

MainWindow(){
   floor = new WallsFloorCeiling(0, height);
   ball = new Ball(200,height-400, this);
   ball2 = new Ball(400,height-400, this);
    
  }
 void MainWindowGo(){
 if(ball.mouseInCircle== true)
   {
    ball.ballVector.x = mouseX;
    ball.ballVector.y = mouseY;
  }
 ball.Gravity();
 ball2.Gravity();
 background(255);
 ball.Draw();
 ball2.Draw();
 
  }
  public PVector checkCollisions(Ball ballx){
    if(ballx.ballVector.y < floor.posY)
      return null;
    return floor.bouncy;
    
  }
}