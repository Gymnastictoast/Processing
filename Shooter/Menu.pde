void mainMenu(){
  background(0);
  textSize(40);
  textAlign(CENTER);
  text("Play",width/2,height/2);

  if(mouseX >= (width/2 - 50) && mouseX <= (width/2 + 50) && mouseY >= (height/2 - 50) && mouseY <= (height/2 + 30)){
    noFill();
    stroke(255);
    rect(width/2 - 50, height/2-50,100,80);
    if(mousePressed)
      gameMode = 1;
  
  }
}