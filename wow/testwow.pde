PImage img;
float f;

void setup() {
  size(512, 512);
  img = loadImage("image.png"); 
  f = random(0, 2);
  imageMode(CENTER);
  drawWowImage();
}

void draw() {
  
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    f = random(0, 2);
    drawWowImage();
  }
}

void drawWowImage() {
  PImage result = wow(img);
  image(result, width/2, height/2);
}

PImage wow(PImage I) {
  PImage result = createImage(I.width, I.height, RGB);
  
  I.loadPixels();
  result.loadPixels();
  
  for (int x = 0; x < I.width; x++) {
    for (int y = 0; y < I.height; y++) {
      int loc = x + y * I.width;
      
      float r = red(I.pixels[loc]);
      float g = green(I.pixels[loc]);
      float b = blue(I.pixels[loc]);
      
      if (x < I.width/3) {
        r /= f;
      } else if (x >= 2*I.width/3) {
        r *= f;
      }
      
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      
      int newColor = color(r, g, b);
      result.pixels[loc] = newColor;
    }
  }
  
  result.updatePixels();
  return result;
}
