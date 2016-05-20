class Bullet {
  float bulletx, bullety, bullettargetx, bullettargety;
  float bulletsize;

  Bullet(float startx, float starty, float targetx, float targety) {
    bulletx = startx;
    bullety = starty;
    bullettargetx = targetx;
    bullettargety = targety;
    bulletsize = 10;
    PVector loc = new PVector(startx, starty);
    PVector target = new PVector(targetx, targety);
    PVector path = loc.sub(target);
    path.setMag(50);  
}

  void display() {
    fill(#330AF0);
    ellipse(bulletx, bullety, bulletsize, bulletsize);
     
    bulletx = lerp(bulletx, bullettargetx, 0.1);
    bullety = lerp(bullety, bullettargety, 0.1);
  }

  boolean done() {
    if (dist(bulletx, bullety, bullettargetx, bullettargety) < 2) {
      return true;
    } else {
      return false;
    }
  }
}