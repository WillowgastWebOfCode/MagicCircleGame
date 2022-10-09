class MagicSymbol{
  SymbolType symbolType;
  PVector position;
  MagicSymbol(SymbolType symbolType, PVector position){
    this.symbolType = symbolType;
    this.position = new PVector(position.x,position.y );
  }
  void update(){
    switch (symbolType){
    case FIRE:
      break;
    case WATER:
      break;
    case AIR:
      break;
    case EARTH:
      break;
    case NONE:
      break;
    }
  }
  void setSymbolType(SymbolType symbolType){
    this.symbolType = symbolType;
  }
  void setPosition(PVector position){
    this.position = position;
  }
}
