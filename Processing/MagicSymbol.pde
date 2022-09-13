class MagicSymbol{
  int symbolType;
  PVector position;
  MagicSymbol(int _symbolType, PVector _position){
    this.symbolType = _symbolType;
    this.position = new PVector(_position.x,_position.y );
  }
  void update(){
    switch (symbolType){
    case 0:
      break;
    }
  }
}
