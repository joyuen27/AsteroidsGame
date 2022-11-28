Spaceship spaceship;
Star[] stars = new Star[1000];
public void setup() 
{
  
  size(500,500);
  spaceship = new Spaceship();
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  
  for (int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  spaceship.show();
  spaceship.move();
  
  fill(255);
  text("myXPos: " + spaceship.myCenterX, 25,30);
  text("myYPos: " + spaceship.myCenterY, 25,45);
  text("myXSpeed: " + spaceship.myXspeed, 25,60);
  text("myYSpeed : " + spaceship.myYspeed, 25,75);
  
  
}
public void keyPressed()
{
  if (key == 'w' || key == 'W'){
    if (spaceship.myXspeed <= 5 && spaceship.myYspeed <= 5){
      spaceship.accelerate(0.5);
    }
  }
  if (key == 'a' || key == 'A'){
    spaceship.turn(-22.5);
  }
  if (key == 'd' || key == 'D'){
    spaceship.turn(22.5);
  }
  if (key == 's' || key == 'S'){
    if (spaceship.myXspeed >= -5 && spaceship.myYspeed >= -5){
      spaceship.accelerate(-0.5);
    }
  }
  if (key == ' '){
    spaceship.hyperspace();
  }
}
