Chalk chalk;

void setup(){
  // screen
  fullScreen();
  noCursor();
  noStroke();
  fill(112);
  
  // objects
  chalk = new Chalk();
}

void draw(){
  background(0);
  chalk.update();
}
