PImage img;
PImage img2;

void setup() {
  size(700, 700);
  img = loadImage("ocean.jpg");
  img2 = loadImage("ocean.jpg");
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 


  int i = 0;
  while (i <= 200) {
    drawPoint();
    i = i +1;
  }
}

void drawPoint() {

  
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);

  float value = brightness (pix);
  int i = round( map (value, 0, 255, 0, 600*600-2) );
  color c2 = img2.pixels[i];
  tint(255, 127); 


  fill(c2, 728);
  rect(x, y, random(0,1), random(0,10));
}
