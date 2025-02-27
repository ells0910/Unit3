//Ellie Gao
//2-3
//27/02/2025

//Pallete of colors 
color lilac = #C8B1E4;
color graypink = #BFADCC;
color purple = #896790;
color pinky = #FFE1F5;
color darkpink = #DFBBDA; 
color darkerlilac = #A47DAB;
color lightpink = #E7CEF2;

void setup() {
 size(800,600);
 strokeWeight(5);
 stroke(purple);
}

void draw() {
  background(pinky);
  
  //buttons
  fill(lilac);
  circle(100,450,100);
  
  fill(graypink);
  circle(300,450,100);
  
  
  fill(darkpink);
  circle(500,450,100);
  
  fill(lightpink); 
  circle(700,450,100);
  
  fill(darkerlilac);
  square(250,40,300);
}
