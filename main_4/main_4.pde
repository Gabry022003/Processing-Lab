ArrayList<FireBall> lista;
Volcano v1, v2, v3;
boolean on=false;

void setup() {
  size(640, 648);
  lista=new ArrayList<FireBall>();
  v1=new Volcano();
  v2=new Volcano();
  v3=new Volcano();
}

void draw() {
  background(0);
  frameRate(60);
  v1.starta();
  v2.starta();
  v3.starta();
  for (FireBall fi : lista) {
    fi.starta();
  }

  if (on) {
    if (int(random(0, 100))<20) {
      lista.add(v1.spara());
      lista.add(v2.spara());
      lista.add(v3.spara());
    }
  }
}

void keyPressed() {
  if (key=='N'|| key=='n') {
    if (on) {
      on=false;
    } else {
      on=true;
    }
  }

  if (key=='R'|| key=='r') {
    lista.clear();
    setup();
  }
}
