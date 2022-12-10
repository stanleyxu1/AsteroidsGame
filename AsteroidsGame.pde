Star[] hi = new Star[200];
Spaceship hello = new Spaceship();
boolean wIsPressed = false;
boolean sIsPressed = false;
boolean dIsPressed = false;
boolean aIsPressed = false;
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid>();
ArrayList <Bullet> asa = new ArrayList <Bullet>();

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
  //bullet + asteroid collision
  for (int f=0; f<asa.size(); f++) {
    for (int q=0; q<asteroid.size(); q++) {
      double c = dist((float)asa.get(f).getCentX(), (float)asa.get(f).getCentY(), (float)asteroid.get(q).getCenterX(), (float)asteroid.get(q).getCenterY());       
      if (c<10) {
        asa.remove(f);
        asteroid.remove(q);
        break;
      }
    }
  }


  background(0);
  hello.show();

  //BULLETS
  for (int i=0; i<asa.size(); i++) {
    asa.get(i).move();
    asa.get(i).show();
  }

  //STARS
  for (int i=0; i<hi.length; i++) {
    noStroke();
    hi[i].show();
  }

  //ASTEROIDS
  for (int k=0; k<asteroid.size(); k++) {
    asteroid.get(k).show();
    asteroid.get(k).move();

    //SHIP AND ASTEROID COLLISION
    double d = dist((float)hello.getMiddleX(), (float)hello.getMiddleY(), (float)asteroid.get(k).getCenterX(), (float)asteroid.get(k).getCenterY());
    if (d<10)
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
 
   if (wIsPressed == true && dIsPressed == true) {

    hello.accelerate(.1);
    hello.turn(3);
    hello.move();
  }
  if (wIsPressed == true && aIsPressed == true) {

    hello.accelerate(.1);
    hello.turn(-3);
    hello.move();
  }
 
 
 
 
 
  if (sIsPressed == false) {
    hello.setSpeedX(hello.getXspeed());
    hello.move();
  }
  if (wIsPressed == false) {
    hello.setSpeedX(hello.getXspeed());
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
  } else if (key == 'v') {

    asa.add(new Bullet(hello));
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
  if (key=='d')
  {
    dIsPressed = false;
  }
    if (key=='a')
  {
    aIsPressed = false;
  }
}
