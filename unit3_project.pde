// Ellie Gao 
// 2-3
// 04-03-2025
//Unit 3 Project

//Pallete of Colors
color pink       = #FAE7EB;
color purple     = #E0D4E7;
color blue       = #D3DCE8;
color orange     = #FEC89A;
color green      = #D8E2DC;
color yellow     = #FCF9BE; 
color red        = #FFADAD;
color brown      = #DDD5D5;
color black      = #000000; 
color white      = #FFFFFF;

//variables for color selection
color selectedColor; 

void setup() {
  size(1000, 800); 
  background(white);
  strokeWeight(3);
  stroke(black);
}

void draw() {
  
  //Sidebar
  stroke(brown);
  fill(brown);
  rect(0,0,250,800);
  strokeWeight(3);
  stroke(black);
  
  //Colors 
  fill(pink);
  circle(70,100,50);
  
  fill(purple);
  circle(70,200,50);
  
  fill(blue);
  circle(70,300,50);
  
  fill(orange);
  circle(170,100,50);


  
  
   stroke(black);
  
} // -----------End of Draw----------

void mouseDragged() {
  
  line(pmouseX, pmouseY, mouseX, mouseY);
  
  
} // -----------End of MouseDragged--
  
