int screenSide = 800;
int n = screenSide / 10;
Cell [][] cells;
Ant ant;

void setup() {
  size(820, 820);
  background(0);
 
  cells = new Cell[n][n];
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      cells[i][j] = new Cell(i,j);
    }
  }
  ant = new Ant(screenSide / 2, screenSide / 2, cells, n); 
}

void draw() {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      cells[i][j].show();
    }
  }
  ant.update();
}
