class MagicArrow{
  ArrowType arrowType;
  float arrowWidth;
  color arrowColor;
  MagicCircle beginCircle;
  MagicCircle endCircle;
  
  MagicArrow(ArrowType arrowType,MagicCircle beginCircle, MagicCircle endCircle , float arrowWidth, color arrowColor){
    this.arrowType = arrowType;
    this.arrowWidth = arrowWidth;
    this.arrowColor = arrowColor;
    this.beginCircle = beginCircle;
    this.endCircle = endCircle;
  }
  
  void update(){
    PVector beginCenterPosition = beginCircle.getPosition();
    PVector endCenterPosition = endCircle.getPosition();
    PVector beginPosition = beginCircle.getArrowPosition(beginCenterPosition);
    PVector endPosition = beginCircle.getArrowPosition(endCenterPosition);
    strokeWeight(arrowWidth);
    stroke(arrowColor);
    line(beginPosition.x, beginPosition.y, endPosition.x, endPosition.y);    
  }  
}
