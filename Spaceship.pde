class Spaceship extends Floater
{

  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int [corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0 ;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = -2;
    yCorners[3] = 0;
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection=0;
  }
  public void setSpeedX(double x) {
    myXspeed = x;
  }
   public void setSpeedY(double y) {
     myYspeed= y;
  }
  public double getSpeed() {
    return myXspeed;
  }


  public double getDirection() {
    return myPointDirection;
  }

  public void setDirection(double d) {
    myPointDirection = d;
  }
  public void Hyperspace(double h) {
    myCenterX = myCenterY = h;
  }
}
