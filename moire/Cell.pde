class Cell{
  int x;
  int y;
  int r, g, b;
  
  public Cell(int x, int y, int r, int g, int b) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  void show() {
    fill(r, g, b);
    rect(x, y, 10, 10);
  }
}
