class Ant {
  // data
  int x, y;
  int current_angle;
  int index;
  int n;
  int[] angles = {0,90,180,270};
  Cell[][] cells;
  
  // constructor
  Ant(int x, int y, Cell[][] list, int n) {
    this.x = x;
    this.y = y;
    this.n = n;
    cells = list;
    index = 1;
    current_angle = angles[index];
  }
  
  // methods
  void update() {
    // calculate current cell coordinates
    int c_x = (int)Math.floor(x/10) - 1;
    int c_y = (int)Math.floor(y/10) - 1;
    if (c_x < n && c_y < n &&
        c_x > 0 && c_y > 0) {
      Cell current_cell;
      c_x = (int)Math.floor(x/10) - 1;
      c_y = (int)Math.floor(y/10) - 1;
      current_cell = cells[c_x][c_y];

      // update angle      
      current_angle = angles[index];
      
      if (current_cell.black) {
        if (index < 3)
          index++;
        else
          index = 0; 
      } else {
        if (index > 0)
          index--;
        else
          index = 3;
      }
      
      // move
      switch(current_angle) {
        case 0:
          if (current_cell.black) {
            y -= 10;
          } else {
            y += 10;
          }
         break;
          case 90:
          if (current_cell.black) {
            x -= 10;
          } else {
            x += 10;
          }
         break;
         case 180:
          if (current_cell.black) {
            y += 10;
          } else {
            y -= 10;
          }
         break;
         case 270:
          if (current_cell.black) {
            x += 10;
          } else {
            x -= 10;
          }
         break;
      }
      // change cell colour
      current_cell.black = !current_cell.black;
      }
  }
}
