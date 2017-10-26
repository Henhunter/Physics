
public abstract class Item {
  PVector itemVector;
  PVector velocity = new PVector(0, 0);
  Gravity _gravity = new Gravity();
  
  void addGravity()
  {
  itemVector.add(_gravity.addGravity(velocity));
  }
}