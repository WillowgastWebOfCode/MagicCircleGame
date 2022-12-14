class ChalkBoard{
  ChalkDrawing chalkDrawing;
  MagicDrawing magicDrawing;
  Chalk chalk;
  ChalkBoard(){
    this.chalkDrawing = new ChalkDrawing();
    this.magicDrawing = new MagicDrawing();
    this.chalk = new Chalk();
  }
  void drawNewItem(DrawType drawType){
    switch (drawType){
      case CIRCLE:
        ElipseData elipseData = chalkDrawing.findEllipseData();
        magicDrawing.addMagicCircle(elipseData);
        break;
        
      case ARROW:
        break;
        
      case SYMBOL:
        break;
    }
  }
  DrawType recogniseItem(){
    // Only recognises elipses for now
    return DrawType.CIRCLE;
  }
  void update(){
    magicDrawing.update();
    if (mousePressed && mouseButton == LEFT){
      chalkDrawing.drawNewItem();
    } else {
      
      drawNewItem(recogniseItem());
      chalkDrawing.erraseDrawing();
    }
    chalk.update();
  }
}
