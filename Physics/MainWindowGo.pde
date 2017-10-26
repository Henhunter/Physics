public class MainWindow {
  Ball ball;
  Ball ball2;
  WallsFloorCeiling floor;
  ArrayList<Ball> ballList;
  int numberOfBalls=2;

  MainWindow() {
    floor = new WallsFloorCeiling(0, height);
    ballList = new ArrayList<Ball>();
    for (int i=0; i<numberOfBalls; i++)
    {
      ballList.add(new Ball(100*i+100, height-400, this));
    }
  }
  public void mouseWasPressed()
  {
    for (int i=0; i<ballList.size(); i++)
      ballList.get(i).mouseWasPressed();
  }
  public void mouseWasReleased()
  {
    for (int i=0; i<ballList.size(); i++)
      ballList.get(i).mouseWasReleased();
  }
  void MainWindowGo() {
    background(255);
    for (int i=0; i<ballList.size(); i++)
    {
      Ball theBall = ballList.get(i);
      if (theBall.mouseInCircle== true)
      {
        theBall.ballVector.x = mouseX;
        theBall.ballVector.y = mouseY;
      }
      theBall.Gravity();
      theBall.Draw();
    }

    
  }
  public PVector checkCollisions(Ball ballx) {
    if (ballx.ballVector.y < floor.posY)
      return null;
    return floor.bouncy;
  }
}