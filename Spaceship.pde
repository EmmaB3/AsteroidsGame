class Spaceship extends Floater  
{   
    private int turning;
    private boolean accelerating;
    public Spaceship(){
    	corners = 5;
    	xCorners = new int[corners];
    	xCorners[0]=-40; xCorners[1] = 0; xCorners[2] = 30;xCorners[3] = 0; xCorners[4] = -40;
    	yCorners = new int[corners];
    	yCorners[0] = -10;yCorners[1] =20;yCorners[2] =0;yCorners[3] =-20;yCorners[4] = 10;
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
    public void decelerate(double multiplier){
      double angle = Math.atan(myDirectionY/myDirectionX);
       myDirectionX = Math.abs(myDirectionX) > Math.abs(multiplier*Math.cos(angle))? myDirectionX - sign(myDirectionX)*multiplier*Math.abs(Math.cos(angle)) : 0;
       myDirectionY = Math.abs(myDirectionY) > Math.abs(multiplier*Math.sin(angle))? myDirectionY - sign(myDirectionY)*multiplier*Math.abs(Math.sin(angle)) : 0;
    }
}
