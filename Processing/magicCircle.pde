class MagicCircle{
  PVector centerPosition;
  PVector lengths;
  float angle;
  MagicSymbol magicSymbol;
  MagicCircle(PVector _centerPosition, PVector _lengths, float _angle){
    centerPosition = _centerPosition;
    lengths = _lengths;
    angle = _angle;
    magicSymbol = new MagicSymbol(0, centerPosition);
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
  void addSymbol(){
  }
  void update(){
    rotate(angle);
    ellipse(centerPosition.x, centerPosition.y, lengths.x, lengths.y);
  }
}
