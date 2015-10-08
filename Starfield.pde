//your code here
void setup()
{
	size(400);
	background(0);
}
void draw()
{
	//your code here
}
class NormalParticle implements Particle
{
	double x, y, speed, angle;
	int color c;
	NormalParticle() {
		c = color(Math.random()*255)
		x = 200;
		y = 200;
		speed = 10;
		angle = Math.random()*2* PI;
	}
	void move() {
		x = Math.cos()
	}
	void show() {

	}
}
interface Particle
{
	public void show();
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

