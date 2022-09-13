enum MagicState{
 NONE, CHARGED 
}

class MagicDrawing{
  ArrayList<MagicCircle> magicCircles;
  //ArrayList<MagicArrow> magicArrows;
  MagicState magicState;
  MagicDrawing(){
    magicCircles = new ArrayList<MagicCircle>();
    magicState = MagicState.NONE;
    // magicArrows = new ArrayList<MagicArrow>();
 }
 void addMagicCircle(){
 }
 void addMagicArrow(){
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
   /*
   if (magicArrows.size()>0)
     for int i =0; i<magicArrows.size(); i++){
       magicArrows.get(i).update();
     }
   */
   
 }   
}
