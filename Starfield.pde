//your code here
PImage b;
NormalParticle[] particles;
NormalParticle ayy;

void setup(){
  size(500,500);
  background(0);
  particles = new NormalParticle[100];
  for (int b = 0; b < particles.length; b++) {
  particles[b] = new NormalParticle();
  }
//  b = loadImage("http://i.ytimg.com/vi/II4rlQY8f8s/maxresdefault.jpg");
  
//  ayy = new particles(250,250);
}
  //your code here

void draw()
{
  for(int i = 0; i < particles.length; i++){
 particles[i].show();
 particles[i].move();
  }
      fill(0,0,0,70);
    rect(0,0,500,500);
  //your code here
}
class NormalParticle
{
   double x, y, angle, speed;
   int r, g, b;
  
  NormalParticle(){
    
    x = 250;
    y = 250;
    angle = Math.random()*2*Math.PI;
    speed = Math.random()*2.25+1;
    r = (int)(Math.random()*255)+255;
    g = (int)(Math.random()*255)+10;
    b = (int)(Math.random()*255)+250;
    //Color = (255);
    
  }
  
  public void show(){
    noStroke();
  fill(255,0,0);
   ellipse((float)x,(float)y,10,10);
//image(b, (float)x, (float)y, 100,100);  
}
  
  public void move(){
  
   // x = ((float)x, (float)
    x = x + Math.cos(angle)*speed;
    y = y + Math.sin(angle)*speed;
  
  }
  //your code here
}
interface Particle
{
  public void show;
  public void move;
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}

