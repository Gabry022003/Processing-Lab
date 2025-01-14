Automobile a;
AutomobileElettrica e;

void setup() {
  size(512, 512);
  a=new Automobile();
  e=new AutomobileElettrica();
}

void draw() {
  background(#00EAF5);
  a.tutto();
  e.tutto();
}

void keyPressed() {
  if (key=='r') {
    setup();
  }
}
