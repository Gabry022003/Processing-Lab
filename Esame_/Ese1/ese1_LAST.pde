ArrayList<Man> uomo;

void setup() {
  size(512, 512);
  uomo = new ArrayList<Man>();
}

void draw() {
  background(0);

  for (Man m : uomo) {
    m.disegna();
    m.muovi();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    uomo.add(new Man());
  } else if (mouseButton == RIGHT) {
    uomo.add(new Dancer());
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    setup();
  }
}
