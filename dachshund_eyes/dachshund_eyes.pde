int pupilX;
int pupilY;
int pupilX2;
int pupilY2;
PImage face;
void setup(){
  size(700,500);
  face = loadImage("dachshund.jpg");
  face.resize(700, 500);
  
  
}

void draw(){
  image(face, 0, 0);
  fill(mouseX, mouseY, 0);
  ellipse(440, 100, 50, 50);
  ellipse(323, 173, 50, 50);
  fill(0,0,0);
  ellipse(pupilX, pupilY, 20, 20);
  ellipse(pupilX2, pupilY2, 20, 20);
  
  if(mouseX < 470 && mouseX > 420 ){
    pupilX = mouseX;
  }
    if( mouseY < 130 && mouseY > 80){
pupilY = mouseY;
}
if(mouseX < 350 && mouseX > 300 ){
 pupilX2 = mouseX; 
}  
 if(mouseY < 250 && mouseY > 150){
  pupilY2 = mouseY;
}
}