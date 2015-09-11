
int count = 0;
int highest = 0;
void setup()
{
  noLoop();
  size(500,650);
  
}
void draw()
{
  background(0,0,0);
  
 for(int o = 50;  o<= 350; o+=150)
 {
   for(int i = 50; i<=350; i += 150)
   {
     new Die(o,i);
   }
 }
fill(255,255,255);
textSize(32);

text("Current Total:" + count,120,525);
text("Your Highest Total:" + highest,90,555);

text("Highest Possible Total is 54",50,585);
 
}

void mousePressed()
{
  redraw();
  //test = test - 150;
  count = 0;
 
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
    
    
  
  }
  
  void show()
  {
    count = count + side;
    //println(count);
    
    if (count > highest)
    {
      highest = count;
      println(highest);
    }
    
    
    
    
    fill(255);
    rect(myX,myY,100,100);
    
    if(side == 1)
    {
      
      fill(0,0,0);
      ellipse(myX+50,myY+50,20,20);
      
    }
    else if(side == 2)
    {
      
      fill(0,0,0);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
    }
    else if(side == 3)
    {
      fill(0,0,0);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+50,myY+50,20,20);
    }
    else if (side == 4)
    {
      fill(0,0,0);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      
    }
    else if (side == 5)
    {
      fill(0,0,0);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+50,myY+50,20,20);
    }
     else if (side == 6)
    {
      fill(0,0,0);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+50,myY+25,20,20);
      ellipse(myX+50,myY+75,20,20);
    }
  }
}
