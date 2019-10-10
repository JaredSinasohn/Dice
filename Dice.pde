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
		int dotSize=mySiz/10;
		System.out.println(dots);
		if(dots==1){
			fill(0);
			ellipse((myX+mySiz/2), (myY+mySiz/2), (dotSize), (dotSize));
		}else if(dots==2){
				fill(0);
				ellipse(myX+(mySiz/4), myY+(mySiz/4), dotSize, dotSize);
				ellipse(myX+(mySiz*3/4), myY+(mySiz*3/4), dotSize, dotSize);
		}else if(dots==3){
				fill(0);
				ellipse(myX+(mySiz/4), myY+(mySiz/4), dotSize, dotSize);
				ellipse(myX+(mySiz*2/4), myY+(mySiz*2/4), dotSize, dotSize);
				ellipse(myX+(mySiz*3/4), myY+(mySiz*3/4), dotSize, dotSize);
		}else if(dots==4){
			for(int x1=mySiz/4; x1 <= mySiz*3/4; x1+=mySiz/2){
				for(int y1=mySiz/4; y1 <= mySiz*3/4; y1+=mySiz/2){
					fill(0);
					ellipse(myX+x1, myY+y1, dotSize, dotSize);
				}
			}
		}
		else if(dots==5){
			for(int x1=mySiz/4; x1 <= mySiz*3/4; x1+=mySiz/2){
				for(int y1=mySiz/4; y1 <= mySiz*3/4; y1+=mySiz/2){
					fill(0);
					ellipse(myX+x1, myY+y1, dotSize, dotSize);
				}
			}
			ellipse(myX+(mySiz/2), myY+(mySiz/2), dotSize, dotSize);
		}
	}
	void show()
	{
		fill(myRed, myGreen, myBlue);
		stroke(0);
		rect(myX, myY, myX+mySiz, myY+mySiz, mySiz/10);
	}
}
