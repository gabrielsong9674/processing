PImage creeper;
int x= 400;
int y= 400;
void setup() {
  size(700, 500); 
  PImage grass = loadImage("grass.jpg");
  creeper = loadImage("Creeper.png");
  creeper.resize(50, 50);
  grass.resize(700, 500);
  background(grass);
}
void draw() {
  image(creeper, x, y);
  if (mousePressed) {
    fill(250, 0, 0);
    ellipse(mouseX, mouseY, 100, 100);
  }
  if (mousePressed && mouseX <= 200 && mouseY <= 200) {
    fill(0, 250, 0);
    ellipse(mouseX, mouseY, 100, 100);
  }
  if(
}
  boolean isNear(int a, int b) {
    if (abs(a - b) < 10) {
      return true;
      
    } else {
      return false;
    }
  }