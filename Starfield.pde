/*NormalParticle [] bob;
void setup()
{
	size(400);
	background(0);
}
void draw()
{
	for (int i = 0; i < bob.length; i++)
	{
		bob[i].move();
		bob[i].show();
	}
}
class NormalParticle implements Particle
{
	double x, y, speed, angle;
	color c;
	NormalParticle() {
		c = color(Math.random()*255)(int);
		x = 200;
		y = 200;
		speed = 10;
		angle = Math.random()*2* PI;
	}
	void move() {
		x += (int)(Math.cos(angle)*speed);
		y += (int)(Math.sin(angle)*speed);
	}
	void show() {
		fill(c);
		ellipse(x, y, 2, 2);
		speed ++;
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double x, y;
	color c;
	OddballParticle() {
		c = (255, 0, 20);
		x = 200;
		y = 200;
		}
	void move()
	{
		x = Math.random()*5+2;
		y = Math.random()*5+2;
	}
	void show()
	{
		fill()
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}
*/
Particle [] bob;
void setup()
{
  size(400, 400);
  bob = new Particle[200];
  
  for (int i = 0; i< bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bob[0] = new OddballParticle();
  bob[1] = new JumboParticle();

}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].show();
  }
  
}
class NormalParticle implements Particle
{
  double x, y, speed, angle;
  color c;
  NormalParticle() {
    c = color( (int)(Math.random()*255) );
    x = 200;
    y = 200;
    speed = Math.random()*10;
    angle = Math.random()*2* PI;
  }
  void move() {
    x += (Math.cos(angle)*speed);
    y += (Math.sin(angle)*speed);
  }
  void show() {
    fill(c);
    ellipse((float)x, (float)y, 10, 10);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double x, y, speed;
  color c;
  OddballParticle() {
    c = color(20, 0, 200);
    x = 200;
    y = 200;
    }
  void move()
  {
    x = x+ Math.random()*6-3;
    y = x+ Math.random()*6-3;
    speed = Math.random()*3;
  }
  void show()
  {
    fill(c);
    ellipse((float)x, (float)y, 20, 20);
  }
}
class JumboParticle extends NormalParticle
{
  double x, y, speed;
  color c;
  JumboParticle() {
    c = color(255, 0, 0);
    x = 200;
    y = 200;
  }
  void move()
  {
    x = x+ Math.random()*10-5;
    y = y+ Math.random()*10-5;
    speed = 2;
  }
  void show()
  {
    fill(c);
    ellipse((float)x, (float)y, 50, 50);
  }
}

