class MagicArrow{
  ArrowType arrowType;
  float arrowWidth;
  color arrowColor;
  MagicArrow(ArrowType _arrowType, float _arrowWidth, color _arrowColor){
    arrowType = _arrowType;
    arrowWidth = _arrowWidth;
    arrowColor = _arrowColor;
  }
  void Update(MagicCircle beginCircle, MagicCircle endCircle){
    PVector beginPosition = beginCircle.getPosition();
    PVector endPosition = endCircle.getPosition();
    strokeWeight(arrowWidth);
    stroke(arrowColor);
    line(beginPosition.x, beginPosition.y, endPosition.x, endPosition.y);    
  }
}
