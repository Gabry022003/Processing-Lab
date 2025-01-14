ArrayList<Casa> lista;

void setup() {
  size(500, 500);
  lista=new ArrayList<Casa>();
}

void draw() {
  background(0);
  for (Casa c : lista) {
    c.starta();
  }
}

void keyPressed() {
  if (key=='r'||key=='R') {
    setup();
  }
}

void mousePressed() {
  if (mouseButton==LEFT) {
    lista.add(new Casa());
  }
  if (mouseButton==RIGHT) {
    lista.add(new Casetta());
  }
}
