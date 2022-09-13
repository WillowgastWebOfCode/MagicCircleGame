//Chalk chalk;
ChalkBoard chalkBoard;
void setup(){
  // screen
  fullScreen();
  noCursor();
  noStroke();
  fill(112);
  
  // objects
  chalkBoard = new ChalkBoard();
}

void draw(){
  background(0);
  chalkBoard.update();
}
