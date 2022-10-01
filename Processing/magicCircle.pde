class MagicCircle{
  PVector centerPosition = new PVector();
  PVector lengths = new PVector();
  float angle;
  MagicSymbol magicSymbol;
  MagicCircle(PVector _centerPosition, PVector elipseScales){
    centerPosition = _centerPosition;
    lengths.x = elipseScales.x;
    lengths.y = elipseScales.y;
    angle = elipseScales.z;
    magicSymbol = new MagicSymbol(SymbolType.NONE, centerPosition);
  }
  PVector getPosition(){
    return centerPosition;
  }
  PVector getArrowPosition(PVector otherCircleCenterPosition){
    PVector arrowOnElipse = new PVector();
    float differenceX = this.centerPosition.x-otherCircleCenterPosition.x;
    float differenceY = this.centerPosition.y-otherCircleCenterPosition.y;
    float arrowAngle = atan(differenceY/differenceX);
    
    // Calculate the position on the elipse which intersects the line between the two centerpoints of the elipses
    arrowOnElipse.x = cos(arrowAngle-angle)*this.lengths.x;
    arrowOnElipse.y = sin(arrowAngle-angle)*this.lengths.y;
    
    // Rotate the result to the rotation of the elipse
    arrowOnElipse.x = cos(angle)*(centerPosition.x + arrowOnElipse.x) - sin(angle)*(centerPosition.y + arrowOnElipse.y);
    arrowOnElipse.y = sin(angle)*(centerPosition.x + arrowOnElipse.x) + cos(angle)*(centerPosition.y + arrowOnElipse.y); 
    
    return arrowOnElipse;
  }
  void setSymbol(SymbolType symbolType){
    magicSymbol.setSymbolType(symbolType);
    magicSymbol.setPosition(centerPosition);
  }
  void update(){
    pushMatrix();
    translate(centerPosition.x, centerPosition.y);
    rotate(angle);
    ellipse(0, 0, lengths.x, lengths.y);
    popMatrix();
  }
}
