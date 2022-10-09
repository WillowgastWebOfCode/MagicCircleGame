class MagicCircle{
  ElipseData elipseData;
  MagicSymbol magicSymbol;
  
  MagicCircle(ElipseData elipseData){
    this.elipseData = elipseData;
    magicSymbol = new MagicSymbol(SymbolType.NONE, elipseData.centerPosition);
  }
  PVector getPosition(){
    return elipseData.centerPosition;
  }
  PVector getArrowPosition(PVector otherCircleCenterPosition){
    PVector arrowOnElipse = new PVector();
    float differenceX = elipseData.centerPosition.x-otherCircleCenterPosition.x;
    float differenceY = elipseData.centerPosition.y-otherCircleCenterPosition.y;
    float arrowAngle = atan(differenceY/differenceX);
    
    // Calculate the position on the elipse which intersects the line between the two centerpoints of the elipses
    arrowOnElipse.x = cos(arrowAngle-elipseData.angle)*elipseData.length;
    arrowOnElipse.y = sin(arrowAngle-elipseData.angle)*elipseData.width;
    
    // Rotate the result to the rotation of the elipse
    arrowOnElipse.x = cos(elipseData.angle)*(elipseData.centerPosition.x + arrowOnElipse.x) - sin(elipseData.angle)*(elipseData.centerPosition.y + arrowOnElipse.y);
    arrowOnElipse.y = sin(elipseData.angle)*(elipseData.centerPosition.x + arrowOnElipse.x) + cos(elipseData.angle)*(elipseData.centerPosition.y + arrowOnElipse.y); 
    
    return arrowOnElipse;
  }
  void setSymbol(SymbolType symbolType){
    magicSymbol.setSymbolType(symbolType);
    magicSymbol.setPosition(elipseData.centerPosition);
  }
  void update(){
    pushMatrix();
    translate(elipseData.centerPosition.x, elipseData.centerPosition.y);
    rotate(elipseData.angle);
    ellipse(0, 0, elipseData.length, elipseData.width);
    popMatrix();
  }
}
