int size = 10;
int theta = 0;

ArrayList<Cell> cells = new ArrayList<Cell>();
ArrayList<Cell> funkyCells = new ArrayList<Cell>();

void setup() {
  background(255);
  size(600, 600);
  
  for(int i = 0; i < width; i+=size) {
    for(int j = 0; j < height; j+=size) {
      if((i+j) % (2*size) == 0) {
        Cell current = new Cell(i, j, 200, 0, 100);
        cells.add(current);
        current = new Cell(i, j, 200, 0, 0);
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
    scale(1);
    cells.get(i).show();
    rotate(radians(theta));
    funkyCells.get(i).show();
    popMatrix();
  }
  if(theta<360) {
    theta++;
  } else{
    theta = 0;
  }
}
