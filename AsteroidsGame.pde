Star[] hi = new Star[200];
Spaceship hello = new Spaceship();
boolean wIsPressed = false;
boolean dIsPressed = false;

public void setup()
{
  size(500, 500);
  for (int i=0; i<hi.length; i++) {
    hi[i] = new Star();
  }
}
public void draw()
{
  background(0);

  for (int i=0; i<hi.length; i++) {
    noStroke();
    hi[i].show();

  }
  hello.show();
    
      if(wIsPressed == true) {

    hello.accelerate(.1);
    hello.turn(0);
    hello.move();
    }
  
}
public void keyPressed() {
  if (key == 'c') {
    hello.setSpeed(0);
    hello.move();
    hello.Hyperspace((double)(Math.random()*500));
  }

  if (key == 'd') {
    hello.turn(5);
   
  }
  if (key == 'a') {
    hello.turn(-5);
   
  }
  if (key == 's') {
    hello.setSpeed(0);
    hello.accelerate(-15);
    hello.setDirection(hello.getDirection());
    hello.move();
  }

  if (key=='w')
  {
    wIsPressed = true;
    
  } else if (key == 'd')
  {
    dIsPressed = true;
  }
  
}
void keyReleased()
{
  if(key=='w')
  {
    wIsPressed = false;
  }
  else if (key == 'd')
  {
    dIsPressed = false;
  }
}
