PImage I, b;
int t = 128;

void setup() {
  size(512, 256);
  I = loadImage("image.png");
  I.resize(256, 256);
  I.filter(GRAY);
  image(I, 0, 0);
  b = split(I, t);
  image(b, 256, 0);
}

// Se il valore di I.pixels[i] < t, mantiene lo stesso pixel; altrimenti mette (0),usare red al posto di (brightness)
PImage split(PImage I, int t) {
  PImage R = createImage(I.width, I.height, RGB);
  I.loadPixels();
  R.loadPixels();
  for (int i = 0; i < R.pixels.length; i++) {
    if (brightness(I.pixels[i]) < t) {
      R.pixels[i] = I.pixels[i];
    } else {
      R.pixels[i] = color(0);
    }
  }
  R.updatePixels();
  return R;
}

void keyPressed() {
  if (key == 't' && t < 256) {
    t++;
    b = split(I, t);
    image(b, 256, 0);
  }
  if (key == 'r') {
    setup();
  }
}

void draw() {
}
