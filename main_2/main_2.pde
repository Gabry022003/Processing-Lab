ArrayList<Cifra> lista;

void setup() {
  size(500, 500);
  lista=new ArrayList<Cifra>();
}

void draw() {
  background(0);
  for (Cifra c : lista) {
    c.starta();
  }
}

void keyPressed() {
  int keyCode = key - '0';

  if (keyCode >= 0 && keyCode <= 4) {
    lista.add(new Cifra());
  } else if (keyCode >= 5 && keyCode <= 9) {
    lista.add(new Cifrotta());
  }
}

void mousePressed() {
  if (mouseButton==LEFT) {
    setup();
  }
}
