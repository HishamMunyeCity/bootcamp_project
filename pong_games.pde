int LrectY = 350; // position of the left and right rectangle 
int  RrectY = 350;

float ellX = width/2; //position of the ball (centre)
float ellY = height/2;

boolean moveRight = true; // 2 options of moving down or right
boolean moveDown = true;

float speedSide = 4.5;
float speedVertical = 5.5;  // speed of the ball and when in vertical

int countR  = 0;
int countL = 0;  
// score counter for player 1 and 2
void setup() {
  size(700, 700);
  background(0);// size of screen and background colour
}
void draw() {
  background(0); 

  fill(250, 0, 0);
  ellipse(ellX, ellY, 50, 50); // ball and the size 
  text("Table Tennis",300,40); // names iof the game and position

  fill(0, 255, 0);
  rect(20, LrectY, 30, 100); // size of the left rectangle
  text(countL,200,50);

  fill(0, 0, 255);
  rect(630, RrectY, 30, 100); //size of the right rectangle
  text(countR,500,50);
  
  if (keyPressed == true && key == 'w') { // the w key pressed to move the left rectanlge up
    LrectY = LrectY - 6;
  }
  if (keyPressed == true && key == 's') {  // the s key pressed to move the left rectangle down
    LrectY = LrectY + 6;
  }


  if (keyPressed == true && key == 'i') { // the i key pressed to move the right rectanlge up
    RrectY = RrectY - 6;
  }
  if (keyPressed == true && key == 'k') {// the k key pressed to move the right  rectangle down
    RrectY = RrectY + 6;
  }
  if (moveRight == true) {
    ellX = ellX + speedSide;  // the speed of the ball when its moving right
  } else {
    ellX = ellX - speedSide;
  }
  if (moveDown == true) {
    ellY = ellY + speedVertical;  // the  vertical speed of the ball when the ball is moving down
  } else {
    ellY = ellY - speedVertical;
  }

  if (ellY<=10) {
    moveDown = true;  // if the ball  y  is less than or equal it will  move down  
  }
  if (ellY>=690) {
    moveDown = false; // if the ball y is greater than or equal it will not move down 
  }
  if (ellX>=690) {
    moveRight = false; // if the ball y is greater than or equal it will not move down 
  }
  if (ellX<=10) {
    moveRight = true; // if the ball  y  is less than or equal it will  move down  
  }
  if ( ellX >= width-10){
    countL++;
    ellX = width/2;
    ellY = height /2; 
    // when a point is scored then is will add one point  to the left counter and then restart in the center
  }
  if ( ellX <= 10){
    countR++;
    ellX = width/2;
    ellY = height /2;
    //when a point is scored then is will add one point  to the right counter and then restart in the center
  }
  if(ellX>= 615 && ellY >RrectY && ellY < (RrectY + 100)){
  moveRight = false;
  } // if ball x is greater than or equal to 615  and ball y is greater than right rectangle  , and  ball y will is less than right rectangle + 100
   if(ellX<= 75 && ellY >LrectY && ellY < (LrectY + 100)){
  moveRight = true
  //if ball x is greater than or equal to 75  and ball y is greater than left rectangle  , and  ball y will is less than left rectangle + 100
  }
}
