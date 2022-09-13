class ChalkBoard{
  ChalkDrawing chalkDrawing;
  //MagicDrawing magicDrawing;
  Chalk chalk;
  ChalkBoard(){
    this.chalkDrawing = new ChalkDrawing();
    //this.magicDrawing = new MagicDrawing();
    this.chalk = new Chalk();
  }
  void drawNewItem(){
  }
  void recogniseItem(){
  }
  void update(){
    chalk.update();
    if (mousePressed && mouseButton == LEFT){
      chalkDrawing.drawNewItem();
    } else {
      chalkDrawing.erraseDrawing();
    }
  }
}
