class ChalkDrawing{
  ArrayList<ChalkLine> lines;
  float drawThickness;
  ChalkDrawing(){
    drawThickness = 16;
    lines = new ArrayList<ChalkLine>();
  }
  
  boolean checkMouseDistance(){
    if (lines.size() > 0){ 
      ChalkLine line = lines.get(lines.size()-1);
      PVector mouse = new PVector(mouseX, mouseY);
      PVector distance = mouse.sub(line.end);
      if (distance.mag() < drawThickness/2){
        return false;
      }      
    }
    return true;
  }
  
  void displayDrawing(){
    if (lines.size()>0){
      for (int i =0; i<lines.size(); i++){
        lines.get(i).update();
      }      
    }
  }
  void erraseDrawing(){
    if (lines.size() > 0){ 
      for (int i = lines.size() - 1; i >= 0; i--) {     
        lines.remove(i);
      }
    }
  }
  void update(){
    if (mousePressed && mouseButton == LEFT){
      if (checkMouseDistance()){
        lines.add(new ChalkLine(drawThickness));
      }
      displayDrawing();
    } else {
      erraseDrawing();
    }    
  }
}
