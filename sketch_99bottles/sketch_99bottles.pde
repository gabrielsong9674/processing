int y;
int number;
void setup(){
  size(1000, 3000);
   for(int i = 100;i>0;i--) {
     text(i + " bottles of milk on the wall, "+ i +" bottles of milk. Take one down and pass it around, " + (i-1) +" bottles of milk on the wall.", 10, y);
   y+=20;
   }
 
}

void draw(){
  
}