Player player;
boolean moveRight, moveLeft, moveUp, moveDown;
boolean shooting;
ArrayList<Bullet> bullets; 
ArrayList<Target> targets;
ArrayList<Pickups> pickups;
int shotDelay = 10;   //1 shoots very fast. 60 shoots slow.
int timeSinceShot = 0;
int gameMode = 0;


void setup() {    
  size(500, 500,P2D);
  player = new Player();
  bullets = new ArrayList<Bullet>();
  targets = new ArrayList<Target>();
  pickups = new ArrayList<Pickups>();
} 

void draw() {   
  if (gameMode == 0)
    mainMenu();
  else if (gameMode == 1)
    Playing();
    
    
}

void mousePressed() {
  shooting = true;
}
void mouseReleased() {
  shooting = false;
}

void keyPressed() {

  if (keyCode == RIGHT || key == 'd')                  
    moveRight = true;                    
  if (keyCode == LEFT || key == 'a') 
    moveLeft = true;
  if (keyCode == UP || key == 'w')
    moveUp = true;
  if (keyCode == DOWN || key == 's')
    moveDown = true;
}

void keyReleased() {
  if (keyCode == RIGHT || key == 'd')                  
    moveRight = false;                    
  if (keyCode == LEFT || key == 'a') 
    moveLeft = false;
  if (keyCode == UP || key == 'w')
    moveUp = false;
  if (keyCode == DOWN || key == 's')
    moveDown = false;
}