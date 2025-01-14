ArrayList<Stain> lista;
Sponge sp;

void setup() {
  size(700, 700);
  lista= new ArrayList<Stain>();
  sp=new Sponge();
}

void draw() {
  background(#08F4FA);
  sp.starta();

  for (Stain n : lista) {
    n.starta();
    if (sp.adsorb(n)) {
      n.cancella();
      println("cancellato fratm");
    }
  }
}

void keyPressed() {
  if (key=='S'|| key=='s') {
    lista.add(new Stain());
  }
  if (key=='R' || key=='r') {
    fill(0);
    textSize(60);
    textAlign(CENTER);
    text("Reset", width/2, height/2);
    setup();
  }
}
