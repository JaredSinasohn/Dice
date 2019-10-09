void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die alpha= new Die(0,0,69,255,255,255);
	alpha.show();
	alpha.roll();
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
	
	Die(int x, int y, int siz, int r, int g, int b) //constructor
	{
		//variable initializations here
		myX=x;
		myY=y;
		mySiz=siz;
		myRed=r;
		myGreen=g;
		myBlue=b;
	}
	void roll()
	{
		int dots=(int)(Math.random()*6)+1;
		System.out.println(dots);
		if(dots==1){
			fill(0);
			ellipse((myX+mySiz/2), (myY+mySiz/2), (mySiz/10), (mySiz/10));
		}

	}
	void show()
	{
		fill(myRed, myGreen, myBlue);
		stroke(0);
		rect(myX, myY, myX+mySiz, myY+mySiz, mySiz/10);
	}
}
