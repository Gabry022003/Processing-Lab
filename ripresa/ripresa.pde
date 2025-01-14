PImage l, r, g, q;
int k=0;
void setup() {
  size(512, 512);
  l=loadImage("image.png");
  l.resize(256, 256);
  image(l, 0, 0);
  r=logaritmo(l);
  image(r, 256, 0);
  float gm=2;
  g=gamma(l, gm);
  image(g, 0, 256);
  k=2;
  q=gamma(l, k);
  image(q, 256, 256);
}

PImage quantizza(PImage I, int k) {
  PImage R=I.copy();
  I.loadPixels();
  R.loadPixels();
  float q;

  for (int i=0; i<R.pixels.length; i++) {
    q=floor(int(blue(R.pixels[i])*k)/256);
    q=float(int(q)/(k-1)*255);
    R.pixels[i]=color(q);
  }

  R.updatePixels();
  return R;
}

PImage gamma(PImage I, float gm) {
  PImage R=I.copy();
  I.loadPixels();
  R.loadPixels();
  float r, g, b;
  float C=1/pow(255, gm-1);

  for (int i=0; i<R.pixels.length; i++) {
    r=C*pow(1+red(R.pixels[i]), 2);
    g=C*pow(1+green(R.pixels[i]), 2);
    b=C*pow(1+blue(R.pixels[i]), 2);
    R.pixels[i]=color(r, g, b);
  }

  R.updatePixels();
  return R;
}

PImage logaritmo(PImage I) {
  PImage R=I.copy();
  I.loadPixels();
  R.loadPixels();
  float r, g, b;
  float C=255/log(256);

  for (int i=0; i<R.pixels.length; i++) {
    r=C*log(1+red(R.pixels[i]));
    g=C*log(1+green(R.pixels[i]));
    b=C*log(1+blue(R.pixels[i]));
    R.pixels[i]=color(r, g, b);
  }

  R.updatePixels();
  return R;
}

void keyPressed() {
  if (key=='e') {
    k++;
    q=gamma(l, k);
    image(q, 256, 256);
  }
  if (key=='r') {
    setup();
  }
}

void draw() {
}
