class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 5;
    	xCorners = new int[corners];
    	xCorners[0]=0; xCorners[1] = 40; xCorners[2] = 70;xCorners[3] = 40; xCorners[4] = 0;
    	//{210,250,280,250,210}; 210 = 0
    	yCorners = new int[corners];
    	yCorners[0] = 10;yCorners[1] =40;yCorners[2] =20;yCorners[3] =0;yCorners[4] = 30;
    	//{240,270,250,230,260}; 230
    	myColor = #f7cb47;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 10;
    	myDirectionY = 10;
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
}
