class Bullet extends Floater{
  public Bullet(Spaceship source){
    corners = 5;
     xCorners = new int[corners];
     xCorners[0]=-8; xCorners[1] = 0; xCorners[2] = 6;xCorners[3] = 0; xCorners[4] = -8;
     yCorners = new int[corners];
     yCorners[0] = -2;yCorners[1] =4;yCorners[2] =0;yCorners[3] =-4;yCorners[4] = 2;
     myColor = #513c09;
     myCenterX = source.getX();
     myCenterY = source.getY(); 
     myPointDirection = ship.getPointDirection();
     myDirectionX = Math.cos(myPointDirection*Math.PI/180) * 10;
     myDirectionY = Math.sin(myPointDirection*Math.PI/180) * 10;
  }
  
  public void setX(int x){myCenterX = x;};  
   public int getX(){return (int)myCenterX;};   
   public void setY(int y){myCenterY = y;};   
   public int getY(){return (int)myCenterY;};   
   public void setDirectionX(double x){myDirectionX = x;};   
   public double getDirectionX(){return myDirectionX;};   
   public void setDirectionY(double y){myDirectionY = y;};   
   public double getDirectionY(){return myDirectionY;};   
   public void setPointDirection(int degrees){myPointDirection = degrees;};   
   public double getPointDirection(){return myPointDirection;}; 
}
