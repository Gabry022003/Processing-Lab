Bucket b;
ArrayList<Egg>lista;

void setup() {
  size(500, 500);
  b= new Bucket();
  lista= new ArrayList<Egg>();
}

void draw() {
  background(#4DA7FF);
  frameRate(60);
  b.starta();
  for (Egg l : lista) {
    l.starta();
    b.raccolta(l);
  }
}

void keyPressed() {
  if (key=='N'||key=='n') {
    lista.add(new Egg());
  }
  if (key=='R'||key=='r') {
    setup();
  }
}
