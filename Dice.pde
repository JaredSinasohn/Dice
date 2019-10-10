void setup()
{
	size(400,500);
	noLoop();
}
void draw()
{
	background(200,200,200);
	int sum = 0;
	for(int i = 25; i<325; i+=125){
		for(int j = 25; j<325; j+=125){
			Die alpha = new Die(j,i,100,255,255,255);
			alpha.show();
			alpha.roll();
			sum+=alpha.dots;
		}
	}
	textSize(50);
	text("Dot count: " + sum,25,450);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;
	int mySiz;
	int myRed;
	int myGreen;
	int myBlue;
	int dots;
	
	Die(int x, int y, int siz, int r, int g, int b) //constructor
	{
		//variable initializations here
		myX=x;
		myY=y;
		mySiz=siz;
		myRed=r;
		myGreen=g;
		myBlue=b;
		dots=(int)(Math.random()*6)+1;
	}
	void roll()
	{
		int dotSize=mySiz/10;
		if(dots==1)
		{
			fill(0);
			ellipse((myX+mySiz/2), (myY+mySiz/2), (dotSize), (dotSize));
		}
		else if(dots==2)
		{
				fill(0);
				ellipse(myX+(mySiz/4), myY+(mySiz/4), dotSize, dotSize);
				ellipse(myX+(mySiz*3/4), myY+(mySiz*3/4), dotSize, dotSize);
		}
		else if(dots==3)
		{
				fill(0);
				ellipse(myX+(mySiz/4), myY+(mySiz/4), dotSize, dotSize);
				ellipse(myX+(mySiz*2/4), myY+(mySiz*2/4), dotSize, dotSize);
				ellipse(myX+(mySiz*3/4), myY+(mySiz*3/4), dotSize, dotSize);
		}
		else if(dots==4)
		{
			for(int x1=mySiz/4; x1 <= mySiz*3/4; x1+=mySiz/2)
			{
				for(int y1=mySiz/4; y1 <= mySiz*3/4; y1+=mySiz/2)
				{
					fill(0);
					ellipse(myX+x1, myY+y1, dotSize, dotSize);
				}
			}
		}
		else if(dots==5)
		{
			for(int x1=mySiz/4; x1 <= mySiz*3/4; x1+=mySiz/2)
			{
				for(int y1=mySiz/4; y1 <= mySiz*3/4; y1+=mySiz/2)
				{
					fill(0);
					ellipse(myX+x1, myY+y1, dotSize, dotSize);
				}
			}
			ellipse(myX+(mySiz/2), myY+(mySiz/2), dotSize, dotSize);
		}
		else if(dots==6)
		{
			for(int x1=mySiz/4; x1 <= mySiz*3/4; x1+=mySiz/2)
			{
				for(int y1=mySiz/4; y1 <= mySiz*3/4; y1+=mySiz/4)
				{
					fill(0);
					ellipse(myX+x1, myY+y1, dotSize, dotSize);
				}
			}
		}
	}
	void show()
	{
		fill(myRed, myGreen, myBlue);
		stroke(0);
		rect(myX, myY, mySiz, mySiz, mySiz/10);
	}
}
