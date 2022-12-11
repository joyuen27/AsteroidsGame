class Bullet extends Floater {
  
  public Bullet(Spaceship a){
    myCenterX = a.getmyCenterX();
    myCenterY = a.getmyCenterY();
    myXspeed = a.getmyXspeed();
    myYspeed = a.getmyYspeed();
    myPointDirection = a.getmyPointDirection();
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
