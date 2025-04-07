//Ellie Gao
//2-3
//Unit3 Checkpoint C - Sliders

//Pallete of Colors

color purple     = #E0D4E7;
color black      = #000000; 
color white      = #FFFFFF;

float sliderX;  // floating point notation
float shade;
float thickness = 0;


void setup() {
  size(800, 800);
  strokeWeight(5);
  stroke(black);
  fill(purple);
  sliderX = 400;
 // shade = 0;
}

void draw() {
  background(white);
  
  thickness = map(sliderX, 100, 700, 15, 0);
    strokeWeight(thickness);


  line(400, 200, 400, 600);
  circle(400, sliderX, 50);
}

void mouseDragged() {
  controlSlider();
   }
void mouseReleased() {
  controlSlider();
   }

void controlSlider() {
  if(mouseY > 200 && mouseY < 600 && mouseX > 370  && mouseX < 425) {
    sliderX = mouseY;
  }
  
 // shade = map(sliderX, 100, 700, 0, 255);
  
}
