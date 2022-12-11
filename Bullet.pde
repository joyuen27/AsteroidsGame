class Bullet extends Floater {
  
  public Bullet(Spaceship whafdklafslkf){
    myCenterX = whafdklafslkf.getmyCenterX();
    myCenterY = whafdklafslkf.getmyCenterY();
    myXspeed = whafdklafslkf.getmyXspeed();
    myYspeed = whafdklafslkf.getmyYspeed();
    myPointDirection = whafdklafslkf.getmyPointDirection();
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
