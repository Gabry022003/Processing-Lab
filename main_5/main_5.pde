ArrayList<Bubble> bolle;
ArrayList<Fish> lista;

void setup() {
  size(500, 500);
  bolle= new ArrayList<Bubble>();
  lista= new ArrayList<Fish>();
}

void draw() {
  background(#4DA7FF);
  frameRate(60);
  for (Fish f : lista) {
    f.starta();
    if ((int(random(0, 100)))<2) {
      bolle.add(f.gene());
    }
  }

  for (Bubble b : bolle) {
    b.starta();
  }
}


void keyPressed() {
  if (key=='N'||key=='n') {
    lista.add(new Fish());
  }
  if (key=='R'||key=='r') {
    setup();
  }
}
