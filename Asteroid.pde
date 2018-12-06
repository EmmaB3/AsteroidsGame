class Asteroid extends Floater{
  private int bodyWidth;
  private double rotSpeed;
  public Asteroid(){
    corners = (int)(Math.random()*10) + 15;
    corners *= 2;
    xCorners = new int[corners];
    yCorners = new int[corners];
    //int spikeLength =(int)(Math.random() * 25) + 25;
    //int bodyWidth = (int)(Math.random() * 25);
    for(int a = 0; a < corners; a += 2){
      int spikeLength = (int)(Math.random() * 25) + 25;
      for(int b = 0; b < 2; b ++){
        double spikeAngle = 2*Math.PI*(a+b)/corners;
        int lengthMultiplier = b == 1? spikeLength: spikeLength - ((int)(Math.random() * 20 + 15));
        xCorners[a + b] = (int)(Math.cos(spikeAngle)*lengthMultiplier);
        yCorners[a + b] = (int)(Math.sin(spikeAngle) * lengthMultiplier);
      }
      rotSpeed = (Math.random() * 3) - 1;
    }
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
    bodyWidth = (int)(Math.random()*25) + 10;
    ellipse((float)myCenterX,(float)myCenterY,bodyWidth,bodyWidth);
    myColor = #60278c;
    myDirectionX = (Math.random() * 3) - 1;
    myDirectionY = (Math.random()*3) - 1;
    myPointDirection = Math.random()*360;
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
    public void show(){
      super.show();
      ellipse((float)myCenterX,(float)myCenterY,bodyWidth,bodyWidth);
    }
    public void move(){
      super.move();
      turn(rotSpeed);
    }
}
