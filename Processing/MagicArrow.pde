class MagicArrow{
  ArrowType arrowType;
  float arrowWidth;
  color arrowColor;
  MagicCircle beginCircle;
  MagicCircle endCircle;
  
  MagicArrow(ArrowType _arrowType,MagicCircle _beginCircle, MagicCircle _endCircle , float _arrowWidth, color _arrowColor){
    arrowType = _arrowType;
    arrowWidth = _arrowWidth;
    arrowColor = _arrowColor;
    beginCircle = _beginCircle;
    endCircle = _endCircle;
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
