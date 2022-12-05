Spaceship spaceship;
Star[] stars = new Star[1000];
ArrayList <Asteroid> aList = new ArrayList <Asteroid>();
public void setup() 
{
  
  size(500,500);
  spaceship = new Spaceship();
  for (int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  
  for ( int i = 0; i < 5; i++){
    aList.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  
  for (int i = 0; i < stars.length; i++){
    stars[i].show();

  }
  for ( int i = 0; i < aList.size(); i++){
    aList.get(i).move();
    aList.get(i).show();
    
    float d = dist((float)(spaceship.getmyCenterX()), (float)(spaceship.getmyCenterY()), (float)(aList.get(i).getmyCenterX()), (float)(aList.get(i).getmyCenterY()));
    if (d < 15){
      aList.remove(i);
    }
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
    spaceship.accelerate(0.05);
  }
  if (key == 'a' || key == 'A'){
    spaceship.turn(-22.5);
  }
  if (key == 'd' || key == 'D'){
    spaceship.turn(22.5);
  }
  if (key == 's' || key == 'S'){
    spaceship.accelerate(-0.05);
  }
  if (key == ' '){
    spaceship.hyperspace();
  }
}
