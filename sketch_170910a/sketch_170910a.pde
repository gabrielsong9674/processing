import ddf.minim.*;
AudioSample sound;

void setup(){
  Minim minim = new Minim (this);
  sound = minim.loadSample("basic-drum.wav");
  size(500, 500);
  PImage pizzaBox = loadImage("pizzaBox.jpg");
pizzaBox.resize(500, 500); 
background(pizzaBox);
  fill(206, 206, 152);
  ellipse(250, 250, 400, 400);
  fill(214, 26, 51);
  ellipse(250, 250, 370, 370);
  fill(250, 242, 93);
  ellipse(250, 250, 350, 350);

}

void draw(){
  PImage pepperoni = loadImage("pepperoni.ppm.gif");
  pepperoni.resize(40, 40);
  PImage tennis = loadImage("tennisball.ppm.gif");
  tennis.resize(80, 80);
  if(mousePressed && (mouseButton == RIGHT)){
    sound.stop();
 image(pepperoni, mouseX, mouseY);
    sound.trigger();
} 
  if(mousePressed && (mouseButton == LEFT)){
   sound.stop();
   image(tennis, mouseX, mouseY);
   sound.trigger();
    
  }
}