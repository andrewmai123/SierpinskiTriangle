int i = 0;

public void setup()
{
	frameRate(20);
	background(0);
	size(600,600);
}
public void draw()
{
	sierpinski(75,100,450);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20)
	{

		triangle(x,y,x+len/2,y+len,x+len,y);
	}

	else
	{

		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		strokeWeight((int)(Math.random()*6));
		stroke(255);
		sierpinski( x,  y, len/2) ;
		sierpinski( x+len/2,  y, len/2) ;
		sierpinski( x+len/4,  y + len/2, len/2) ;
	}
}