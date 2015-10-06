//your code here
NormalParticle[] particles;

void setup(){
  size(500,500);
  background(0);
  particles = new NormalParticle[300];
  for (int b = 0; b < particles.length; b++) {
  particles[b] = new NormalParticle(250,250);
  }
}
	//your code here

void draw()
{
  //particles[b].show;
	//your code here
}
class NormalParticle
{
   double x, y, Angle; 
  int Color, Speed;
  
  NormalParticle(int x, int y){
    
    x = 250;
    y = 250;
    Angle = Math.random()*2*Math.PI;
    //Color = (255);
    
  
  }
  
  void show(){
  fill(0,255,0);
    ellipse(250,250,30,30);
  }
  
  void move(){
  
   // x = ((float)x, (float)
    
  
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

