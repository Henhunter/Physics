public class Gravity{
  float gravity = 1.01;
  PVector addGravityVector;
  
  //add gravity to the item
  public PVector addGravity(PVector velocity)
  {
    if (velocity.y>0) {
      velocity.y = velocity.y*gravity;
    } else if (velocity.y<-0.2) {
      velocity.y = velocity.y - velocity.y*(gravity-1);
    } else {
      velocity.y = 0.1;
    }
    return(new PVector(0, velocity.y));
    
  }
}