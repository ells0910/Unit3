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

color selectedColor;


 void setup() {
   size(800,600);
  strokeWeight(5);
  stroke(mutegreen);
 selectedColor = darkdarkgreen;
 
} //======end of setup-------------------

void draw() {
  background(lightergreen);
  
  //tactile(150,100,100);
  fill(green);
  square(150,100,100);
  
  fill(darkergreen);
  square(350,100,100);
  
  fill(darkestgreen);
  square(550,100,100);
  
  fill(selectedColor);
  circle(400,400,200);
  
  
} //------end of draw----------------------

//void tactile(int x, int y) {
// if (dist(x+50, y+50, mouseX, mouseY) < 50) {
//   stroke(lightgreen);
// } else {
//   stroke(mutegreen);
  
  
//} // ------ void tactile ---------------------
    

  
void mouseReleased() {
 
  //Green 
  if (dist(200,150, mouseX, mouseY) < 50) {
    selectedColor = green; 
  } 
  
  //DarkerGreen
  if (dist(400,140, mouseX, mouseY) < 50) {
 selectedColor = darkergreen; 
  }
  
//DarkestGreen
if (dist(600,150, mouseX, mouseY) < 50) {
  selectedColor = darkestgreen;
}

  
} //=======end of mouseReleased------------
