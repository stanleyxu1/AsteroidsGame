class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColour;
  public Star() {
    myX=(int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColour = color((int)(Math.random()*257),
                      (int)(Math.random()*257),
                       (int)(Math.random()*257));
  }

  public void show() {
    fill(myColour);
    ellipse(myX, myY, 6, 6);
  }
}
