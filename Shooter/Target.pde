class Target{
  
  float targetx, targety, targetSize;

  Target(float targetstartx, float targetstarty, float targetstartsize){
    targetx = targetstartx;
    targety = targetstarty;
    targetSize = targetstartsize;
  
  }
  
  void display(){
    
    fill(255,0,0);
    ellipse(targetx,targety,targetSize,targetSize);
    fill(255);
    ellipse(targetx,targety,targetSize/2,targetSize/2);
    fill(255,0,0);
    ellipse(targetx,targety,targetSize/4,targetSize/4);
  }
  
  boolean hit(Bullet bullet){
  if(dist(targetx,targety,bullet.bulletx,bullet.bullety) < ((targetSize/2) + (bullet.bulletsize/2))){
  return true;
} else
  return false;
  }
}