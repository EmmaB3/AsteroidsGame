//your variable declarations here
Spaceship ship = new Spaceship();
public void setup() 
{
  size(500,500);  
  background(35, 206, 200);
  ship.show();
}

public void draw() 
{
	if(ship.getAccelerating()){
		ship.accelerate();
	}
}

public void keyPressed(){
	if (keyCode == 83){
		ship.setAccelerating(true);
	}
}

public void keyReleased(){
	if(keyCode == 83){
		ship.setAccelerating(false);
	}
}
