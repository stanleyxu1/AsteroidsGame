Star[] hi = new Star[200];
Spaceship hello = new Spaceship();
boolean wIsPressed = false;
boolean sIsPressed = false;

public void setup()
{
  size(500, 500);
  for (int i=0; i<hi.length; i++) {
    hi[i] = new Star();
  }
}
public void draw()
{
  System.out.println(hello.getSpeed());
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
    if(sIsPressed == true) {
    hello.accelerate(-.1);
    hello.turn(0);
    hello.move();
    }
     if(sIsPressed == false) {
    hello.setSpeedX(hello.getSpeed());
    hello.move();
    }
    if(wIsPressed == false) {
    hello.setSpeedX(hello.getSpeed());
    hello.move();
    }
  
}
public void keyPressed() {
  if (key == 'c') {
    hello.setSpeedX(0);
    hello.setSpeedY(0);
    hello.move();
    hello.Hyperspace((double)(Math.random()*500));
    hello.setDirection((int)(Math.random()*361));
  }

  if (key == 'd') {
    hello.turn(5);
   
  }
  if (key == 'a') {
    hello.turn(-5);
   
  }


  if (key=='w')
  {
    wIsPressed = true;
    
  }
  else if (key == 's')
  {
    sIsPressed = true;
  }
  
}
void keyReleased()
{
  if(key=='w')
  {
    wIsPressed = false;
  }
   if (key == 's')
  {
    sIsPressed = false;
  }
}
