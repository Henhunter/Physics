  
  
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
 MW.mouseWasPressed(); 
}
public void mouseReleased() {
  MW.mouseWasReleased();
}