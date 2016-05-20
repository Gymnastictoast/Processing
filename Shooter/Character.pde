
class Player {
  float x, y, diam, radius;

  Player() {
    x = width/2;
    y = height/2;
    diam = 30;
    radius = diam/2;
  }

  void display() {
    fill(#31E0E8);
    ellipse(x, y, diam, diam);
  }

  void checkEdges() {
    if (x < radius)
      x = radius;
    if (x > width-radius)
      x = width-radius;
    if (y < radius)
      y = radius;
    if (y > height-radius)
      y = height-radius;
  }

  void shoot(boolean shooting) {
    if (shooting) {
      if(timeSinceShot > shotDelay){
      bullets.add(new Bullet(x, y, mouseX, mouseY));
      timeSinceShot = 0;
      }  
    }
  }

  void move(boolean moveRight, boolean moveLeft, boolean moveUp, boolean moveDown) {
    if (moveRight == true) 
      x += 5;
    if (moveLeft == true) 
      x -= 5;
    if (moveUp == true) 
      y -= 5;
    if (moveDown == true) 
      y += 5;
  }
}