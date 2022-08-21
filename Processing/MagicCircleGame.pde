Chalk chalk;
ChalkDrawing  chalkDrawing;

void setup(){
  // screen
  fullScreen();
  noCursor();
  noStroke();
  fill(112);
  
  // objects
  chalk = new Chalk();
  chalkDrawing = new ChalkDrawing();
}

void draw(){
  background(0);
  chalkDrawing.update();
  chalk.update();
}
