//your code here
PImage b;
NormalParticle[] particles;
NormalParticle ayy;
OddballParticle[] oddies;
JumboParticle[] biggies;
void setup(){
  size(500,500);
  background(0);
  particles = new NormalParticle[100];
  for (int b = 0; b < particles.length; b++) {
  particles[b] = new NormalParticle();
  }
  
  oddies = new OddballParticle[100];
  for(int c = 0; c < oddies.length; c++){
  oddies[c] = new OddballParticle();
  }
  
  biggies = new JumboParticle[100];
  for(int d = 0; d < biggies.length; d++){
    biggies[d] = new JumboParticle();
  
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
 
 oddies[i].show();
 oddies[i].move();
 
 biggies[i].show();
 biggies[i].move();
  }
  noStroke();
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
    angle = Math.random()*3*Math.PI;
    speed = Math.random()*4.25+1;
    r = (int)(Math.random()*255)+155;
    g = (int)(Math.random()*255)+10;
    b = (int)(Math.random()*255)+130;
    //Color = (255);
    
  }
  
  public void show(){
    noStroke();
  fill(r,g,b);
   ellipse((float)x,(float)y,8,8);
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
  public void show();
  public void move();
  //your code here
}
class OddballParticle implements Particle //uses an interface
{
     double oddX, oddY, oddAngle, oddSpeed;
   int r, g, b;
  //your code here
  OddballParticle(){
    
    oddX = 250;
    oddY = 250;
    oddAngle = Math.random()*10*Math.PI;
    oddSpeed = Math.random()*1.50+0.50;
    r = (int)(Math.random()*255)+255;
    g = (int)(Math.random()*255)+10;
    b = 100; //(int)(Math.random()*255);
    
    if(oddX < 700 && oddY < 700){
      
      b+= 50;
      b -= 20;
    }
    
  
  }
  
  public void show(){
  
      noStroke();
  fill(r,g,b);
   ellipse((float)oddX,(float)oddY,7,10);
   
  }
  
  public void move(){
  
        oddX = oddX + Math.cos(oddAngle)*oddSpeed;
    oddY = oddY + Math.sin(oddAngle)*oddSpeed;
    
  }
}
class JumboParticle extends NormalParticle//uses inheritance
{
  JumboParticle(){
//      x = 250;
//    y = 250;
//    angle = Math.random()*3*Math.PI;
//    speed = Math.random()*2.25+1;
    r = (int)(Math.random()*255)+255;
//    g = (int)(Math.random()*255)+10;
    b = (int)(Math.random()*255)+150;
  }
  //your code here
  public void show(){
        noStroke();//stroke(255,0,0);
  fill(255);
   ellipse((float)x,(float)y,15,15);
  }
}

