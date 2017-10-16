void setup(){
  size(500,500);
  for(int i = 200; i > 0; i -= 10){
   ellipse(250, 250, i, i); 
   if(i % 20 == 0){
    fill(250, 0, 0); 
   }
   else {
    fill(250, 250, 250); 
   }
  }
}


