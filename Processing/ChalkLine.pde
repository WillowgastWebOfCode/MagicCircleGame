class ChalkLine{
  PVector start, end;
  float strokeWeight;
  ChalkLine(float strokeWeight){
    this.start = new PVector(pmouseX, pmouseY);
    this.end = new PVector(mouseX, mouseY);
    this.strokeWeight = strokeWeight;
  }
  void update(){
    stroke(220);
    strokeWeight(strokeWeight);
    line(start.x, start.y, end.x, end.y);
  }
}
