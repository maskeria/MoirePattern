int size = 10;
int theta = 0;

ArrayList<Cell> cells = new ArrayList<Cell>();
ArrayList<Cell> funkyCells = new ArrayList<Cell>();

void setup() {
  background(255);
  size(700, 700);
  
  for(int i = -width; i < width; i+=size) {
    for(int j = -height; j < height; j+=size) {
      if((i+j) % (2*size) == 0) {
        Cell current = new Cell(i, j, 0, 0, 0);
        cells.add(current);
        current = new Cell(i, j, 0, 0, 0);
        funkyCells.add(current);
      }
    }
  }
}

void draw() {
  background(255);

  for(int i = 0; i < cells.size(); i++) {
    
    cells.get(i).show();
    pushMatrix();
    
    
    translate(width/2, height/2);
    rotate(radians(theta));
    scale(1);
    funkyCells.get(i).show();
    
    popMatrix();
  }
  if(theta<360) {
    theta++;
  } else{
    theta = 0;
  }
}
