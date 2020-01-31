int size = 8;
int theta = 4;
float scale = 1;

ArrayList<Cell> cells = new ArrayList<Cell>();
ArrayList<Cell> funkyCells = new ArrayList<Cell>();

void setup() {
  background(255);
  size(700, 700);
  
  for(int i = -width; i < width; i+=size) {
    for(int j = -height; j < height; j+=size) {
      if((i+j) % (2*size) == 0) {
        Cell current = new Cell(size, i, j, 0,0,0);
        cells.add(current);
        current = new Cell(size, i, j, 255, 0, 0);
        funkyCells.add(current);
      }
    }
  }
}

void draw() {
  background(255);

  for(int i = 0; i < cells.size(); i++) {
    pushMatrix();
    
    translate(width/2, height/2);
    cells.get(i).show();
    rotate(radians(theta));
    scale(scale);
    funkyCells.get(i).show();
    
    popMatrix();
  }
  if(theta<360) {
    theta+=2;
  }else{
    theta = 0;
  }
  
}
