int moveXRight =250;
int moveXLeft = 750;
int i= 300;
void setup() {
  size(1000, 1000);
  background(250, 250, 250);
  int x;
  int y;
}
void draw() {
  background(250, 250, 250);
  bullseye(moveXRight, 250);
  bullseye(moveXLeft, 250);
  moveXRight++;
  moveXLeft--;
}
void bullseye(int x, int y) {
  for (int i = 300; i > 0; i -= 10) {
    ellipse(x, y, i, i); 
    noFill();
  }
}