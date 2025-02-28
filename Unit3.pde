//Ellie Gao
//2-3
//27/02/2025

//Pallete of colors
color lilac       = #C8B1E4;
color graypink    = #BFADCC;
color purple      = #896790;
color pinky       = #FFE1F5;
color darkpink    = #DFBBDA;
color darkerlilac = #A47DAB;
color lightpink   = #E7CEF2;
color white       = #FFFFFF;
color pinkish     = #FFDBFF;

//variables for color selection
color selectedColor; 

void setup() {
  size(800, 600);
  strokeWeight(5);
  stroke(pinkish);
}

void draw() {
  background(pinky);
  
  //if 
   if (dist(100, 450, mouseX, mouseY) < 50) {
   stroke(white);
  } else {
  stroke(pinkish);
  }

  //buttons  
  fill(lilac);
  circle(100, 450, 100);

   if (dist(300, 450, mouseX, mouseY) < 50) {
   stroke(white);
  } else {
  stroke(pinkish);
  }

  fill(graypink);
  circle(300, 450, 100);
 
   if (dist(500, 450, mouseX, mouseY) < 50) {
   stroke(white);
  } else {
  stroke(pinkish);
  }
  fill(darkpink);
  circle(500, 450, 100);

  if (dist(700, 450, mouseX, mouseY) < 50) {
   stroke(white);
  } else {
  stroke(pinkish);
  }
  fill(lightpink);
  circle(700, 450, 100);

  //indicator
   if (dist(250, 40, mouseX, mouseY) < 50) {
   stroke(white);
  } else {
  stroke(pinkish);
  }

  fill(selectedColor);
  square(250, 40, 300);
} // end of draw =============================

void mouseReleased() {
  //lilac button
  if (dist(100, 450, mouseX, mouseY) < 50) {
   selectedColor = lilac;
  }
  
  //graypink
  if(dist(300,450, mouseX,mouseY) < 50) {
    selectedColor = graypink;
    }

  
  //darkpink
  if(dist(500,450, mouseX,mouseY) < 50) {
    selectedColor = darkpink;
  }
  //lightpink
  if(dist(700,450,mouseX,mouseY) <50) {
    selectedColor = lightpink;
  }
  
}
