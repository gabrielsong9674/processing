int ballPositionY =-10;
int randomNumber;
int bucket;
int score;
int checkCatch;
void setup(){
  size(500,500);
  randomNumber = (int) random(width);
  
}
void draw(){
  background(255,152,245);
  ellipse(randomNumber, ballPositionY += 4, 20, 40);
  fill(173,140,91);
  noStroke();
  checkCatch();
  if(ballPositionY >= 540){
    randomNumber = (int) random(width);
    ellipse(randomNumber, ballPositionY = 0, 20, 40);
  }
  rect(mouseX, 460, 100, 50);
  fill(0, 39, 252);
}
  void checkCatch(){
   if((randomNumber > mouseX && randomNumber < mouseX + 100) &&(ballPositionY >= 499 && ballPositionY <= 500 ))
    score+= 1;
   else if (score > 0)
     //score--;
    println("Your score is now: " +score);
    fill(0,0,0);
    textSize(16);
    text("Score: " +score, 20, 20);
   
  }