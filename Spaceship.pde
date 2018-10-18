class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 5;
    	xCorners = new int[corners];
    	xCorners[0]=210; xCorners[1] = 250; xCorners[2] = 280;xCorners[3] = 250; xCorners[4] = 210;
    	//{210,250,280,250,210};
    	yCorners = new int[corners];
    	yCorners[0] = 140;yCorners[1] = 270;yCorners[2] =250;yCorners[3] =230;yCorners[4] = 260;
    	//{240,270,250,230,260};
    	myColor = "#f7cb47";
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 10;
    	myDirectionY = 10;
    	myPointDirection = 0;
    }


}
