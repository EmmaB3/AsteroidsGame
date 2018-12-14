//your variable declarations here
Spaceship ship = new Spaceship();
Star[] bubbles = new Star[50];
ArrayList<Asteroid> urchins = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
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
  }
  for(int a = bullets.size() - 1; a >= 0; a --){
    bullets.get(a).move();
    bullets.get(a).show();
    if(bullets.get(a).getX() <= 0 || bullets.get(a).getX() >= 500 || bullets.get(a).getY() <= 0 || bullets.get(a).getY() >= 500){
      bullets.remove(a);
    }else{
        for(int b = urchins.size() -1; b >= 0; b --){
           if(bullets.size() > 0 && dist(bullets.get(a).getX(), bullets.get(a).getY(), urchins.get(b).getX(), urchins.get(b).getY()) <= 15){
             bullets.remove(a);
             urchins.remove(b);
             break;
           }
        }
    }
  }
  	ship.show();
	if(ship.getAccelerating()){
		ship.accelerate(0.25);
	}else if(Math.abs(ship.getDirectionX()) > 0 || Math.abs(ship.getDirectionY()) > 0){
     ship.decelerate(0.25);
  }
	ship.turn(2 * sign(ship.getTurning()));
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
 if(keyCode == 32){
   bullets.add(new Bullet(ship));
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
