class Bullet extends Floater {
  
  public Bullet(Spaceship spaceship){
    myCenterX = spaceship.getmyCenterX();
    myCenterY = spaceship.getmyCenterY();
    myXspeed = spaceship.getmyXspeed();
    myYspeed = spaceship.getmyYspeed();
    myPointDirection = spaceship.getmyPointDirection();
    accelerate(2);
  }
  
  public void show(){
    fill(255,0,0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public double getmyCenterX(){
    return myCenterX;
  }
  
  public double getmyCenterY(){
    return myCenterY;
  }
  
}
