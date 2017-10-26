public class WallsFloorCeiling {
 public int posY;
 public PVector bouncy = new PVector(0,1.2);
 WallsFloorCeiling(int x, int y) {
   posY = height-20;
  rect(0,height-20,width,20);
 }
}