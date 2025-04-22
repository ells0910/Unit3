// Ellie Gao  :(
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
boolean chiikawaOn;  // true or false


void setup() {
  size(1000, 800);
  background(white);
  strokeWeight(5);
  stroke(black);
  fill(black);
  chiikawa = loadImage("chiikawa.png");
  chiikawaOn = false;

  //selectedColor black;
  sliderX = 110;
}

void draw() {

  //toolbar
  stroke(0);
  strokeWeight(1);
  fill(white);
  rect(70, 490, 100, 100);


  //Sidebar
  strokeWeight(3);
  stroke(brown);
  fill(brown);
  rect(0, 0, 250, 800);
  strokeWeight(3);
  stroke(black);

  //stamp
  tactile(60, 490, 120, 100);
  chiikawaOnOff();
  rect(60, 490, 120, 100);
  image(chiikawa, 70, 480, 100, 100);

  //Colors
  tactile(70, 100, 50);
  fill(pink);
  circle(70, 100, 50);

  tactile(70, 200, 50);
  fill(purple);
  circle(70, 200, 50);

  tactile(70, 300, 50);
  fill(blue);
  circle(70, 300, 50);

  tactile(170, 100, 50);
  fill(orange);
  circle(170, 100, 50);

  tactile(170, 200, 50);
  fill(green);
  circle(170, 200, 50);

  tactile(170, 300, 50);
  fill(red);
  circle(170, 300, 50);

  tactile(120, 350, 40);
  fill(black);
  circle(120, 350, 40);

  stroke(black);
  fill(selectedColor);
  rect(20, 460, 200, 20);

  //New Button
  textSize(20);
  stroke(black);
  PFont newFont;
  newFont = loadFont("LetterGothicStd.otf");
  textFont(newFont);
  text("new", 120, 620);
  fill(white);
  rect(20, 600, 200, 40);

  //Load Button
  
  rect(20, 650, 200, 40);

  //Save Button
  rect(20, 700, 200, 40);



  //Slider
  thickness = map(sliderX, 10, 400, 0, 40);
  line(20, 400, 220, 400);
  fill(black);
  strokeWeight(thickness);
  circle(sliderX, 400, 20);
  line(60, 440, 180, 440);


  stroke(selectedColor);
} // -----------End of Draw----------

void mouseDragged() {
  //stamp
  if (chiikawaOn == false) {

    //squiggly line
    controlSlider();
    fill(selectedColor);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    //chiikawa drawing
    image(chiikawa, mouseX, mouseY, 100, 100);
  }
}
void mouseReleased() {
  controlSlider();
  
  //stamp
if(chiikawaOn == true) {
  image(chiikawa, mouseX, mouseY, 150, 200);
} else {
  //squigglyline
  stroke(selectedColor);
  strokeWeight(thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
}


  //new button
  if (mouseX > 20 && mouseX < 220 && mouseY > 600 && mouseY < 630) {
    background(white);
    
  }

  //Chiikawa button
  if (mouseX > 60 && mouseX < 180 && mouseY > 490 && mouseY < 590) {
    chiikawaOn = !chiikawaOn;
  }

  //Load Button
  if (mouseX > 20 && mouseX < 220 && mouseY > 650 && mouseY < 690) {
    selectInput("Pick an image to load", "openImage");
  }

  // Save button
  if (mouseX > 20 && mouseX < 220 && mouseY > 700 && mouseY < 740) {
    selectOutput("Choose a name for your image file", "saveImage");
  }


  //pink
  if (dist(70, 100, mouseX, mouseY) < 25) {
    selectedColor = pink;
  }

  //purple
  if (dist(70, 200, mouseX, mouseY) <25) {
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
  if (mouseX>20 && mouseX < 220 && mouseY > 390 && mouseY < 410) {
    sliderX = mouseX;
  }
} // -----------End of MouseDragged--

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(black);
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(yellow);
  } else {
    fill(white);
  }
} // ------------ End of Tactile ---------

void chiikawaOnOff() {
  if (chiikawaOn == true) {
    stroke(white);
  } else {
    stroke(black);
  }
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get(71, 1, width-71, height-1);
    canvas.save(f.getAbsolutePath());
  }
}

void openImage(File f) {
  if (f != null) {
    //KLUDGE
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 250, 0);
      n=n+1;
    }
  }
}
