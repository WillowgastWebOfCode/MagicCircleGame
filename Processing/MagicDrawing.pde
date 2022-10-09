class MagicDrawing{
  ArrayList<MagicCircle> magicCircles;
  ArrayList<MagicArrow> magicArrows;
  MagicState magicState;
  MagicDrawing(){
    magicCircles = new ArrayList<MagicCircle>();
    magicState = MagicState.NONE;
    magicArrows = new ArrayList<MagicArrow>();
 }
 void addMagicCircle(ElipseData elipseData){
   magicCircles.add(new MagicCircle(elipseData));
 }
 void addMagicArrow(ArrowType arrowType,MagicCircle beginCircle, MagicCircle endCircle , float arrowWidth, color arrowColor){
   magicArrows.add(new MagicArrow(arrowType, beginCircle, endCircle , arrowWidth, arrowColor));
 }
 void addSymbol(SymbolType symbolType, int magicCircleNumber){
   MagicCircle magicCircle = magicCircles.get(magicCircleNumber);
   magicCircle.setSymbol(symbolType);
   
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
