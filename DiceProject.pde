//Jonathan Layes Dice.
String[] stuff = { "1", "2", "3", "4", "5", "6" }; // die numbers
PImage img; // image string
PFont font;// font string

void setup() { // void setup() = once

  size(512, 512); // size of window

  font = createFont("Steam Punk Flyer.ttf", 32); //loading font, size of font.
  img = loadImage("PoliceBoxDice.jpg"); // loading die background.

  // load up die number (so it wont be just blank).
  fill(255);// text color

  textFont(font); // the font that will appear in program.

  textSize(150); 

  image(img, 0, 0, 512, 512); //image position = x,y, Size = x,y

  textAlign(CENTER, CENTER); // text is aligned

  text("1", 256, 256); // number that first appears
}

void draw() { //void draw()= forever
}


void mouseClicked() { // when mouse is clicked it resets with a new image 

  image(img, 0, 0, 512, 512); //image position = x,y, Size = x,y
  fill(255); // color of text.

  textFont(font); // the font that will appear in program.

  textSize(150); // size of font

  textAlign(CENTER, CENTER); // aligning text to the center

  text(stuff[int(random (6))], 256, 256); 
  // randomly picking the "stuff" in the list, postioning text x and y
  // 6 = the number the random can choose in the string.
}
