public class MainWindow { //<>//
  WallsFloorCeiling floor;
  ArrayList<Ball> ballList;
  int numberOfBalls=5;
  
  //Constructor for MainWindow
  MainWindow() {
    //make a floor
    floor = new WallsFloorCeiling(0, height);
    //make List with balls in it
    ballList = new ArrayList<Ball>();
    for (int i=0; i<numberOfBalls; i++)
    {
      ballList.add(new Ball(100*i+100, height-400, this));
    }
  }
  
  //Main method for actions going on in the window
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
  
  //Collision detection
  public PVector checkCollisions(Ball theBall) {
    for (int i=0; i<ballList.size(); i++) {
      if (theBall != ballList.get(i))
      {
        if (theBall.ballVector.dist(ballList.get(i).ballVector)<50)
        {
          print("Hit");
        }
      }
      if (theBall.ballVector.y < floor.posY)
        continue;
      return floor.bouncy;
    }
    return null;
  }
  
  
  //Mouse related actions
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
}