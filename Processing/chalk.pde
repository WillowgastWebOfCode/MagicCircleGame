class Chalk{
 PVector position;
 PImage chalkUp;
 PImage chalkDown; 
 ChalkDrawing chalkDrawing;
 
 Chalk() {
   chalkUp   = loadImage("../Assets/ChalkDrawing/ChalkUp.png");
   chalkDown = loadImage("../Assets/ChalkDrawing/ChalkDown.png");
   position = new PVector(mouseX, mouseY);
 }
 
 void drawing(){
   if (mousePressed && mouseButton == LEFT){
     image(chalkDown, position.x, position.y);
   } else{
     image(chalkUp, position.x, position.y);
   }
 } 
 void updatePosition(){
   position.x = mouseX-chalkUp.width/2;
   position.y = mouseY-chalkUp.height/2;
 }
 void update(){
   updatePosition();
   drawing();
 }
}
