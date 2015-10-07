//your code here
NormalParticle[] particles;
NormalParticle ayy;

void setup(){
  size(500,500);
  background(0);
  particles = new NormalParticle[300];
  for (int b = 0; b < particles.length; b++) {
  particles[b] = new NormalParticle(250,250);
  }
  
//  ayy = new particles(250,250);
}
	//your code here

void draw()
{
  for(int i = 0; i < particles.length; i++){
 particles[i].show;
 particles[i].move;
  }
	//your code here
}
class NormalParticle
{
   double x, y, angle, speed;
   int Color;
  
  NormalParticle(int x, int y){
    
    x = 250;
    y = 250;
    angle = Math.random()*2*Math.PI;
    speed = 8.25;
    
    //Color = (255);
    
  }
  
  public void show(){
    
  fill(0,255,0);
    ellipse((float)x,(float)y,30,30);
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

