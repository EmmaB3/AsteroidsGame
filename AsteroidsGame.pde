//your variable declarations here
Spaceship ship = new Spaceship();
public void setup() 
{
  size(500,500);  
}

public void draw() 
{
	background(35, 206, 200);
  	ship.show();
	if(ship.getAccelerating() && Math.sqrt(Math.pow(ship.getDirectionX(),2) + Math.pow(ship.getDirectionY(), 2)) < 20){
		ship.accelerate(0.25);
		//OH WAIT BUT NOW IT CAN'T TURN CRAPP
	}
	ship.turn(1 * (int)Math.signum(ship.getTurning()));
	ship.move();
}

public void keyPressed(){
	if (keyCode == 83){
		ship.setAccelerating(true);
	}
	if(keyCode == 65){
		ship.setTurning(-1);
	}
	if(keyCode == 68){
		ship.setTurning(1);
	}

	if(keyCode == 87){
		ship.setX((int)(Math.random()*501));
		ship.setY((int)(Math.random()*501));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
	}
}

public void keyReleased(){
	if(keyCode == 83){
		ship.setAccelerating(false);
	}
	if(keyCode == 65 || keyCode == 68){
		ship.setTurning(0);
	}
}
