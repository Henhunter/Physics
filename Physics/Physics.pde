
public MainWindow MW;

void setup()
{
  size(800, 600);
  MW = new MainWindow();
}

void draw() {
  MW.MainWindowGo();
}

public void mousePressed() {
  float d = dist(MW.ball.ballVector.x, MW.ball.ballVector.y, mouseX, mouseY);
  if (d<50) {
    MW.ball.mouseInCircle = true;
  } else {
    MW.ball.mouseInCircle = false;
  }
}
public void mouseMoved() {
  if (MW.ball.mouseInCircle == true)
  { //<>//
    MW.ball.ballVector.x = mouseX;
    MW.ball.ballVector.y = mouseY;
  }
}
public void mouseReleased() {
  MW.ball.mouseInCircle = false;
}