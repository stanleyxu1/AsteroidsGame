Star[] hi = new Star[200];
Spaceship hello = new Spaceship();
boolean wIsPressed = false;
boolean sIsPressed = false;
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();

public void setup()
{
  size(500, 500);
  for (int i=0; i<hi.length; i++) {
    hi[i] = new Star();
  }
  for (int k=0; k<15; k++) {
    asteroid.add(new Asteroid());
  }
}



public void draw()
{
  background(0);
  hello.show();

  for (int i=0; i<hi.length; i++) {
    noStroke();
    hi[i].show();
  }
  
  for (int k=0; k<asteroid.size(); k++) {
   asteroid.get(k).show();
    asteroid.get(k).move();
    double d = dist((float)hello.getMiddleX(), (float)hello.getMiddleY(), (float)asteroid.get(k).getCenterX(), (float)asteroid.get(k).getCenterY());
     if(d<10)
       asteroid.remove(k);
  }
  

  
  if (wIsPressed == true) {

    hello.accelerate(.1);
    hello.turn(0);
    hello.move();
  }
  if (sIsPressed == true) {
    hello.accelerate(-.1);
    hello.turn(0);
    hello.move();
  }
  if (sIsPressed == false) {
    hello.setSpeedX(hello.getSpeed());
    hello.move();
  }
  if (wIsPressed == false) {
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
  } else if (key == 's')
  {
    sIsPressed = true;
  }
}
void keyReleased()
{
  if (key=='w')
  {
    wIsPressed = false;
  }
  if (key == 's')
  {
    sIsPressed = false;
  }
}
