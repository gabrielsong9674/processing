import ddf.minim.*;
AudioSample sound1;
AudioSample sound2;
PImage donkey;
PImage tail;
boolean pinned = false;
int tailX;
int tailY;
void setup() {
  Minim minim = new Minim(this);
  sound1 = minim.loadSample("applause.wav");
  sound2 = minim.loadSample("sad.wav");
  size(1000, 1000);
  donkey = loadImage("donkey 2.jpg");
  donkey.resize(1000, 1000);
  background(donkey);
  tail = loadImage("eeyoreTail.png");
  tail.resize(200, 0);
  noFill();
  
  
 
}
void draw() {

  println(mouseX, mouseY);
  if (mouseX >= 0 && mouseY >=0 && mouseX <=170 && mouseY <=200) {
    background(donkey);
  } else {
    background(0, 0, 250);
  }
    textSize(48);
  fill(0, 0, 0);
   text("Pin the Tail on the Donkey", 100, 50);

  if (mousePressed && pinned == false) {
    pinned = true;
    tailX = mouseX-100;
    tailY = mouseY;
    image(tail, mouseX-100, mouseY);
    
    if(mouseX <= 940 && mouseX >=740 && mouseY <= 580 && mouseY >= 326){
    sound1.trigger();
    }
    else{
      sound2.trigger();
    }
  }
  if (pinned == true) {
    image(tail, tailX, tailY);
  }
  
  
}