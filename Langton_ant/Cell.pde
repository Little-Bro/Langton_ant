class Cell {
  // data
  int x, y;
  int side;
  boolean black;
  
  // constructor
  Cell(int i, int j) {
    side = 10;
    x = side + side * i;
    y = side + side * j;
    black = false;
  }
  
  // methods
  void show() {
      if (black) {
        fill(0);
    } else {
        fill(255);
    }
    noStroke();
    rect(x, y, side, side);
  }
}
