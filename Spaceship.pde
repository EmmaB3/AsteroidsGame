class Spaceship extends Floater  
{   
    private int turning;
    private boolean accelerating;
    public Spaceship(){
    	corners = 5;
    	xCorners = new int[corners];
    	xCorners[0]=0; xCorners[1] = 40; xCorners[2] = 70;xCorners[3] = 40; xCorners[4] = 0;
    	yCorners = new int[corners];
    	yCorners[0] = 10;yCorners[1] =40;yCorners[2] =20;yCorners[3] =0;yCorners[4] = 30;
    	myColor = #f7cb47;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
    public void setX (int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    public void setAccelerating(boolean val){accelerating = val;}
    public boolean getAccelerating(){return accelerating;}
    public void setTurning(int t){turning = t;}
    public int getTurning(){return turning;}
}
