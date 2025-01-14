PImage primo, secondo;
int KS=75;

void setup() {
  size(512, 512);
  primo=loadImage("image.png");
  secondo=primo.copy();
  image(secondo, 0, 0);
}

void quad(int x, int y, int ks) {
  noFill();
  strokeWeight(3);
  stroke(#FFF300);
  square(x, y, ks);
}

PImage grey_code(PImage I) {
  PImage R=I.copy();
  R.loadPixels();
  float m, t;
  for (int i=0; i<R.pixels.length; i++) {
    m=red(R.pixels[i])+blue(R.pixels[i])+green(R.pixels[i]);
    t=m/3;
    R.pixels[i]=color(t);
  }
  R.updatePixels();
  return R;
}

void mousePressed() {
  secondo=trasforma(primo, mouseX, mouseY, KS);
}

void keyPressed()
{
  if (key=='+') {
    KS+=5;
  }
  if ((key=='-')&&(KS>=40 && KS<=255)) {
    KS-=5;
  }

  if (key=='r') {
    setup();
  }
}

PImage trasforma(PImage I, float x, float y, int n) {
  PImage res=I.copy();
  PImage tmp;
  tmp=I.get(int(x)-n/2, int(y)-n/2, n, n);
  res.set(int(x)-n/2, int(y)-n/2, grey_code(tmp));
  return res;
}

void draw() {
  image(secondo, 0, 0);
  rectMode(CENTER);
  quad(mouseX, mouseY, KS);
}
