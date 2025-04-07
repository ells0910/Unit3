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

void setup() {
  size(1000, 800); 
  background(white);
  strokeWeight(5);
  stroke(black);
  fill(black);
  sliderX = 110;
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


  
//Slider
   fill(black);
   stroke(black);
 thickness = map(sliderX, 10, 400,0,20);
   line(20,400,220,400);
   strokeWeight(thickness);
   circle(sliderX, 400, 20);
   
  
} // -----------End of Draw----------

void mouseDragged() {
  controlSlider();
}
void mouseReleased() {
  controlSlider();
}

void controlSlider() {
  if(mouseX>20 && mouseX<220 && mouseY>390 && mouseY<410) {
    sliderX = mouseX;
  }
  
  
} // -----------End of MouseDragged--
  
