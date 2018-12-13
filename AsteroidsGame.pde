//your variable declarations here
Spaceship ship = new Spaceship();
Star[] bubbles = new Star[50];
ArrayList<Asteroid> urchins = new ArrayList<Asteroid>();
//Asteroid[] urchins = new Asteroid[15];
public void setup() 
{
  size(500,500);  
  for(int a = 0; a < bubbles.length; a ++){
    bubbles[a] = new Star();
  }
  for(int a = 0; a < 15; a ++){
    urchins.add(new Asteroid());
  }
}

public void draw() 
{
	background(18, 143, 226);
  for (int a = 0; a < bubbles.length; a ++){
    bubbles[a].show();
    bubbles[a].move();
  }
  for(int a = 0; a < urchins.size(); a ++){
    urchins.get(a).show();
    urchins.get(a).move();
    if(ship.getX() >= urchins.get(a).getX() - 15 && ship.getX() <= urchins.get(a).getX() + 15 && ship.getY() <= urchins.get(a).getY() + 15 && ship.getX() >= urchins.get(a).getY() - 15){
      urchins.remove(a);
    }
  }
  	ship.show();
	if(ship.getAccelerating() /*&& Math.sqrt(Math.pow(ship.getDirectionX(),2) + Math.pow(ship.getDirectionY(), 2)) < 20*/){
		ship.accelerate(0.25);
		//OH WAIT BUT NOW IT CAN'T TURN CRAPP
	}else if(Math.abs(ship.getDirectionX()) > 0 || Math.abs(ship.getDirectionY()) > 0){
     ship.decelerate(0.15);
  }
	ship.turn(1 * sign(ship.getTurning()));
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

public int sign(double n){
  return n < 0? -1 : n > 0 ? 1 : 0;
}
