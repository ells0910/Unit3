// Ellie Gao  :)
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


float sliderX;
float thickness = 0;

//variables for color selection
color selectedColor; 

//stamp
PImage chiikawa;


void setup() {
  size(1000, 800); 
  background(white);
  strokeWeight(5);
  stroke(black);
  fill(black);
  chiikawa = loadImage("chiikawa.png");
  
  //selectedColor black;
  sliderX = 110;
}

void draw() {
  
  //Sidebar
  stroke(brown);
  fill(brown);
  rect(0,0,250,800);
  strokeWeight(3);
  stroke(black);
  
  //stamp
  
  
  //Colors 
  
  tactile(70, 100, 50);
  fill(pink);
  circle(70, 100, 50);
  
  tactile(70, 200, 50);
  fill(purple);
  circle(70, 200, 50);
  
  tactile(70,300,50);
  fill(blue);
  circle(70, 300, 50);
  
  tactile(170, 100, 50);
  fill(orange);
  circle(170, 100, 50);
  
  tactile(170, 200, 50);
  fill(green);
  circle(170, 200, 50);
  
  tactile(170,300,50);
  fill(red);
  circle(170, 300, 50);
  
  tactile(120, 350, 40);
  fill(black);
  circle(120, 350, 40);
  
  stroke(black);
  fill(selectedColor);
  rect(20,460,200,20);
  


  
//Slider
 thickness = map(sliderX, 10, 400,0,40);
   line(20,400,220,400);
  fill(black);
   strokeWeight(thickness);
   circle(sliderX, 400, 20);
   line(60,440,180,440);
   
  stroke(selectedColor);
  
} // -----------End of Draw----------

void mouseDragged() {
  controlSlider();
  fill(selectedColor);
  line(pmouseX, pmouseY, mouseX, mouseY);
}
void mouseReleased() {
  controlSlider();
  
  //pink
  if (dist(70, 100, mouseX, mouseY) < 25) {
    selectedColor = pink;
  }
  
  //purple
  if(dist(70, 200, mouseX, mouseY) <25) {
    selectedColor = purple; 
  }
  
  //blue
   if (dist(70, 300, mouseX, mouseY) < 25) {
    selectedColor = blue;
   }
  
  //orange
  if (dist(170, 100, mouseX, mouseY) < 25) {
    selectedColor = orange;
   }
   
   //green
   if (dist(170, 200, mouseX, mouseY) < 25) {
    selectedColor = green;
   }
  
  //red
     if (dist(170, 300, mouseX, mouseY) < 25) {
    selectedColor = red;
   }
   
   //black
      if (dist(120, 350, mouseX, mouseY) < 20) {
    selectedColor = black;
   }
  
}

void controlSlider() {
  if(mouseX>20 && mouseX<220 && mouseY>390 && mouseY<410) {
    sliderX = mouseX;
  }
 

  
} // -----------End of MouseDragged--

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(black);
  }
} // ------------ End of Tactile ---------
