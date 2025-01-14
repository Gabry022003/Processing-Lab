Ball b;
HyperBall h;

void setup() {
  size(512, 256);
  b=new Ball();
  h= new HyperBall();
}


void draw() {
  background(0);
  stroke(255);
  line(width/2, height, width/2, 0);
  b.starta();
  h.starta();
}

void keyPressed() {
  if (key=='r') {
    setup();
  }
}
