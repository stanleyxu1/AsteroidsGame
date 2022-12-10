class Bullet extends Floater {

 
  public Bullet(Spaceship hello) {
    myCenterX = hello.getMiddleX();
    myCenterY = hello.getMiddleY();
    myXspeed = hello.getXspeed();
    myYspeed= hello.getYspeed();
    myPointDirection = hello.getDirection();
    accelerate(6);
  }


  public void show () {
    fill(255);  
    ellipse((float)myCenterX, (float)myCenterY, 20, 10);

  }
 
 
 
 public double getCentX() {
    return (float)myCenterX;
  }
   public double getCentY() {
    return myCenterY;
  }

}




