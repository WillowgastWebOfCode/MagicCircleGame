class Chalk{
 float   xPosition, yPosition;
 PImage chalkUp;
 PImage chalkDown;
 void drawing(){
   if (mousePressed && mouseButton == LEFT){
     image(chalkDown, xPosition, yPosition);
   } else{
     image(chalkUp, xPosition, yPosition);
   }
 }
 Chalk() {
   chalkUp    = loadImage("../Assets/ChalkDrawing/ChalkUp.png");
   chalkDown  = loadImage("../Assets/ChalkDrawing/ChalkDown.png");
   xPosition = mouseX;
   yPosition = mouseY;
 }
 void updatePosition(){
   xPosition = mouseX-chalkUp.width/2;
   yPosition = mouseY-chalkUp.height/2;
 }
 void update(){
   updatePosition();
   drawing();
 }
}
