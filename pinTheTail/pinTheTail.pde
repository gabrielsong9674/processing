PImage donkey;
PImage tail;
boolean pinned = false;
int tailX;
int tailY;
void setup() {
  size(1000, 1000);
  donkey = loadImage("donkey 2.jpg");
  donkey.resize(1000, 1000);
  background(donkey);
  tail = loadImage("eeyoreTail.png");
  tail.resize(200, 0);
  noFill();
  rect(0, 0, 170, 200);
  
}
void draw() {
  if (mouseX >= 0 && mouseY >=0 && mouseX <=170 && mouseY <=200) {
    background(donkey);
  } else {
    background(0, 0, 250);
  }

  if (mousePressed) {
    pinned = true;
    tailX = mouseX-100;
    tailY = mouseY;
    image(tail, mouseX-100, mouseY);
  }
  if (pinned == true) {

    image(tail, tailX, tailY);
  }
}