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

int toggle;

public void setup() {
  /* size commented out by preprocessor */;
  strokeWeight(5);
  textSize(30);
  
 toggle = 1;
 
 
} //======end of setup-------------------

public void draw() {
  background(lightergreen);
  
  fill(green);
  stroke(mutegreen);
  rect(100,100,200,100);
  
  if ( toggle > 0) {
    
    guidelines();
    
  }
  
} //======end of draw----------------------


public void mouseReleased() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 100 && mouseY < 200); {
   toggle = toggle * -1; 
  }
  
} //=======end of mouseReleased------------
