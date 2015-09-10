

void setup()
{
	noLoop();
	size(325,325);
}
void draw()
{
	background(0,0,0);
	Die die1 = new Die(25,25);
	Die die2 = new Die(125,25);
	Die die3 = new Die(225,25);
	Die die4 = new Die(25,125);
	Die die5 = new Die(125,125);
	Die die6 = new Die(225,125);
	Die die7 = new Die(25,225);
	Die die8 = new Die(125,225);
	Die die9 = new Die(225,225);

	
}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int side;
	int myX;
	int myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
		show();
	}
	void roll()
	{
		side = (int)(Math.random()*6 + 1);
		
		System.out.println("1:" + side);	
	}
	
	void show()
	{
		fill(255);
		rect(myX,myY,75,75);

		if(side == 1)
		{
			System.out.println("1:" + side);
			fill(0,0,0);
			ellipse(myX+37,myY+37,20,20);
		}
		else if(side == 2)
		{
			System.out.println("1:" + side);
			fill(0,0,0);
			ellipse(myX+20,myY+37,20,20);
			ellipse(myX+50,myY+37,20,20);
		}
		else if(side == 3)
		{
			fill(0,0,0);
		}
	}
}
