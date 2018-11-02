class Star //note that this class does NOT extend Floater
{
  private int x, y;
  public Star(){
    x = (int)(Math.random()*501);
    y = (int)(Math.random()*501);
  }
  public void show(){
    noStroke();
    fill(138, 191, 226);
    ellipse(x,y,10,10);
  }
  public void move(){
    x+= (int)(Math.random()* 3) - 1;
    y-= (int)(Math.random() * 3);
    if(y < 0){
      y= 500;
    }
  }
}
