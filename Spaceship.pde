class Spaceship extends Floater  
{   
    public Spaceship() {
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myCenterX = 250; 
      myCenterY = 250;
      myColor = 255;
    }
    
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*500;
      myCenterY = Math.random()*500;
      myPointDirection = Math.random()*360;
    }
    
    public double getmyXspeed(){
      return myXspeed;
    }
    
    public double getmyYspeed(){
      return myYspeed;
    }
    
    public double getmyCenterX(){
      return myCenterX;
    }
    
    public double getmyCenterY(){
      return myCenterY;
    }
    
    public double getmyPointDirection(){
      return myPointDirection;
    }
}
