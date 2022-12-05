class Asteroid extends Floater {
    double myRotationSpeed;
  
  public Asteroid (){
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myRotationSpeed = 0.5; 
    myPointDirection = Math.random()*3;
    myXspeed = Math.random()*3 - 1;
    myYspeed = Math.random()*3 - 1;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myColor = 255;
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
    
    myPointDirection+= myRotationSpeed;

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
    
    public double getmyCenterX(){
      return myCenterX;
    }
    
    public double getmyCenterY(){
      return myCenterY;
    }
}
