ArrayList<Voto> arr;
void setup() {
  size(500, 500);
  arr=new ArrayList<>();
}


void draw() {
  background(0);
  for (Voto v : arr) {
    v.disegna();
  }
}

void mousePressed() {
  if (mouseButton==LEFT) {
    arr.add(new Voto());
  } else if (mouseButton==RIGHT) {
    arr.add(new Votone());
  }
}

void keyPressed() {
  if (key=='r') {
    setup();
  }
}
