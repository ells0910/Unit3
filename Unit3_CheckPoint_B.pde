//Ellie Gao
//2-3
//03/11/2025
//Checkpoint3

int lightergreen  =  0xFFD4F3B7;
int lightgreen    =  0xFFBFDAA4;
int green         =  0xFFA9C191;
int mutegreen     =  0xFF93A87E;
int darkergreen   =  0xFF667558;
int darkestgreen  =  0xFF505C45;
int darkdarkgreen =  0xFF384031;





 void setup() {
   size(800,600);
  strokeWeight(5);
  textSize(30);
 
 
} //======end of setup-------------------

void draw() {
  background(lightergreen);
  
  fill(green);
  stroke(mutegreen);
  rect(50,100,200,100);
  
  fill(darkergreen);
  rect(300,100,200,100);
  
  fill(darkestgreen);
  rect(550,100,200,100);
  
//  fill();
  circle(400,400,200);
  
  
} //======end of draw----------------------


void mouseReleased() {
  
} //=======end of mouseReleased------------
