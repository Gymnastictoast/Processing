void Playing() {



background(0);
  timeSinceShot += 1;


  if (random(300) > 295){
    targets.add(new Target(random(width),random(height), random(10,40)));
  }
  
  for (int i = targets.size()-1; i >= 0; i--) {
    Target target = targets.get(i);
    target.display();
    for (int j = bullets.size()-1; j >= 0; j--){
    if (target.hit(bullets.get(j))) {
     targets.remove(target);
     }
    }
  }

  for (int i = bullets.size()-1; i >= 0; i--) {
    Bullet bullet = bullets.get(i);
    bullet.display();
    if (bullet.done()) {
      bullets.remove(bullet);
    }
  }

  player.display();
  player.move(moveRight, moveLeft, moveUp, moveDown);
  player.checkEdges();
  player.shoot(shooting);





}