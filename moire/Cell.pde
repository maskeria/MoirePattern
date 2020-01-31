class Cell{
  int size;
  int x;
  int y;
  int r, g, b;
  
  public Cell(int size, int x, int y, int r, int g, int b) {
    this.size = size;
    this.x = x;
    this.y = y;
    this.r = r;
    this.g = g;
    this.b = b;
  }
  
  void show() {
    fill(r, g, b);
    rect(x, y, size, size);
  }
}
