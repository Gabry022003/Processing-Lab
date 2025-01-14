// massimo
PImage e, f;
int N;
void setup() {
  size(512, 256);
  N=2;
  e=loadImage("image.png");
  e.resize(256, 256);
  image(e, 0, 0);
  f=massimo(e, N);
  image(f, 256, 0);
}

void keyPressed() {
  if (key=='+' && N<20) {
    N++;
    f=massimo(e, N);
    image(f, 256, 0);
  }
  if (key=='r') {
    setup();
  }
}

void draw() {
}

PImage massimo(PImage I, int N) {
  PImage R= createImage(I.width, I.height, RGB);
  PImage tmp;
  float [] tmpF= new float[N*N];
  int off=N/2;

  for (int x=0; x<I.width; x++) {
    for (int y=0; y<I.height; y++) {
      tmp=I.get(x-off, y-off, N, N);
      tmp.loadPixels();
      for (int i=0; i<tmp.pixels.length; i++) {
        tmpF[i]=green(tmp.pixels[i]);
      }

      R.set(x, y, color(max(tmpF)));
    }
  }
  return R;
}
