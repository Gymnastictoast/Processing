class Pickups {

 float pickupx, pickupy;
  
 Pickups(float startx,float starty){
  pickupx = startx;
  pickupy = starty;
 }

 void display(){
   fill(#F55F14);
   ellipse(pickupx,pickupy,40,40);
   noFill();
   ellipse(pickupx,pickupy,40,40);
   textSize(15);
   fill(255);
   text("Shot",pickupx,pickupy-1);
   text("Up",pickupx,pickupy+10);
   stroke(255);
 }
 
 void pickedUp(){
 
 
 }


}