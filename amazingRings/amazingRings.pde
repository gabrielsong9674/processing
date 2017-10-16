int xI = 250;
int xJ = 750;
int i =300;
void setup(){
  size(1000, 1000);
  for(i = 300; i>0; i -= 10){
   ellipse(xI, 250, i, i); 
  }
  for(int j = 300; j>0; j -= 10){
   ellipse(xJ, 250, j, j); 
  }
}
void draw(){
  for(int k = xI; k < 500; k +=20){
   ellipse(k, 250, i, i); 
  }
  
  
}

