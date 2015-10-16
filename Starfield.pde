//your code here
PImage b;
NormalParticle[] particles;
NormalParticle ayy;
OddballParticle[] oddies;
JumboParticle[] biggies;


void setup() {
  size(500, 500);
  background(0);
  particles = new NormalParticle[100];
  for (int b = 0; b < particles.length; b++) {
    particles[b] = new NormalParticle();
  }

  oddies = new OddballParticle[100];
  for (int c = 0; c < oddies.length; c++) {
    oddies[c] = new OddballParticle();
  }

  biggies = new JumboParticle[100];
  for (int d = 0; d < biggies.length; d++) {
    biggies[d] = new JumboParticle();
  }
  //  b = loadImage("http://i.ytimg.com/vi/II4rlQY8f8s/maxresdefault.jpg");

  //  ayy = new particles(250,250);
}
//your code here

void draw()
{
  for (int i = 0; i < particles.length; i++) {
    particles[i].show();
    particles[i].move();
    particles[i].restart();

    oddies[i].show();
    oddies[i].move();
  //  oddies[i].restart();

    biggies[i].show();
    biggies[i].move();
//    biggies[i].restart();
  }


  noStroke();
  fill(0, 0, 0, 70);
  rect(0, 0, 500, 500);
  //your code here
}
class NormalParticle
{
  double x, y, angle, speed;
  int r, g, b;

  NormalParticle() {

    x = 250;
    y = 250;
    angle = Math.random()*3*Math.PI;
    speed = Math.random()*4.25+1;
    r = (int)(Math.random()*255)+155;
    g = (int)(Math.random()*255)+10;
    b = (int)(Math.random()*255)+130;
    //Color = (255);
  }

  public void show() {
    noStroke();
    fill(r, g, b);
    ellipse((float)x, (float)y, 11, 11);

    //image(b, (float)x, (float)y, 100,100);
  }

  public void move() {

    // x = ((float)x, (float)
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  }


 public void restart(){
 
   if(x > 1200 || x < -1200 || y > 1200 || y < -1200){
	   x = 350;
	   y = 350;
   }
}
}

//your code here

interface Particle
{
  public void show();
  public void move();
  public void restart();
  //your code here
}
class OddballParticle implements Particle //uses an interface
{
  double x, y, oddAngle, oddSpeed;
  int r, g, b;
  //your code here
  OddballParticle() {

    x = 250;
    y = 250;
    oddAngle = Math.random()*10*Math.PI;
    oddSpeed = Math.random()*1.50+0.50;
    r = (int)(Math.random()*255)+255;
    g = (int)(Math.random()*255)+10;
    b = 100; //(int)(Math.random()*255);

    //    if(x < 700 && y < 700){
    //      
    //      b+= 50;
    //      b -= 20;
    //    }
  }


public void show() {

  noStroke();
  fill(r, g, b);
  ellipse((float)x, (float)y, 7, 6);
}

public void move() {

  x = x + Math.cos(oddAngle)*oddSpeed;
  y = y + Math.sin(oddAngle)*oddSpeed;
}

public void restart() {

  if (x > 1200 || x < -1200 || y > 1200 || y < -1200) {
    x = 350;
    y = 350;
  }
}

}
class JumboParticle extends NormalParticle//uses inheritance
{
  JumboParticle() {
    //      x = 250;
    //    y = 250;
    //    angle = Math.random()*3*Math.PI;
    //    speed = Math.random()*2.25+1;
    r = (int)(Math.random()*255)+255;
    //    g = (int)(Math.random()*255)+10;
    b = (int)(Math.random()*255)+150;
  }
  //your code here
  public void show() {
    noStroke();//stroke(255,0,0);
    fill(255);
    ellipse((float)x, (float)y, 15, 15);
  }

  //   public void restart(){
  // 
  //   if(x > 1200 || x < -1200 || y > 1200 || y < -1200){
  //   x = 350;
  //   y = 350;
  //   
  //   }

}

