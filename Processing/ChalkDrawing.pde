class ChalkDrawing{
  ArrayList<ChalkLine> lines;
  float drawThickness;
  float MouseDistanceScale;
  ChalkDrawing(){
    drawThickness = 16;
    MouseDistanceScale = 4;
    lines = new ArrayList<ChalkLine>();    
  }
  
  boolean checkMouseDistance(){
    if (lines.size() > 0){ 
      ChalkLine line = lines.get(lines.size()-1);
      PVector mouse = new PVector(mouseX, mouseY);
      PVector distance = mouse.sub(line.end);
      if (distance.mag() < (MouseDistanceScale*drawThickness)){
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
  
  PVector findCenterPoint(){
    PVector centerPoint = new PVector(0,0);
    for (int i = 0; i < lines.size(); i++){
      ChalkLine chalkLine = lines.get(i);
      centerPoint.x = centerPoint.x + chalkLine.start.x;
      centerPoint.y = centerPoint.y + chalkLine.start.y;
    }
    centerPoint.x = centerPoint.x/lines.size();
    centerPoint.y = centerPoint.y/lines.size();
    return centerPoint;
  }
  
  PVector findEllipseValues(PVector centerPoint){
    float max = 0;
    float min = mag(width,height);
    float angle = 0;
    for (int i = 0; i < lines.size(); i++){
      ChalkLine chalkLine = lines.get(i);
      float distance = dist(centerPoint.x, centerPoint.y, chalkLine.start.x, chalkLine.start.y);
      if(min > distance){
        min = distance;
      } else if(max < distance){
        max = distance;
        angle = atan((chalkLine.start.y-centerPoint.y)/(chalkLine.start.x-centerPoint.x));
      }
    }
    return new PVector(min, max, angle);
  }
  
  void erraseDrawing(){
    if (lines.size() > 0){ 
      for (int i = lines.size() - 1; i >= 0; i--) {     
        lines.remove(i);
      }
    }
  }
  
  void drawNewItem(){
    if (checkMouseDistance()){
        lines.add(new ChalkLine(drawThickness));
      }
    displayDrawing();    
  }
}
