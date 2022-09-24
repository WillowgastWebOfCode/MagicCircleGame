class MagicDrawing{
  ArrayList<MagicCircle> magicCircles;
  ArrayList<MagicArrow> magicArrows;
  MagicState magicState;
  MagicDrawing(){
    magicCircles = new ArrayList<MagicCircle>();
    magicState = MagicState.NONE;
    magicArrows = new ArrayList<MagicArrow>();
 }
 void addMagicCircle(PVector _centerPosition, PVector _lengths, float _angle){
   magicCircles.add(new MagicCircle(_centerPosition, _lengths, _angle));
 }
 void addMagicArrow(ArrowType _arrowType,MagicCircle _beginCircle, MagicCircle _endCircle , float _arrowWidth, color _arrowColor){
   magicArrows.add(new MagicArrow(_arrowType, _beginCircle, _endCircle , _arrowWidth, _arrowColor));
 }
 void addSymbol(){
 }
 void update(){
   // Update all circles
   if (magicCircles.size()>0){
     for (int i =0; i<magicCircles.size(); i++){
       magicCircles.get(i).update();
     }      
   }
   // Update all arrows
   if (magicArrows.size()>0)
     for (int i =0; i<magicArrows.size(); i++){
       magicArrows.get(i).update();
     }
 }   
}
