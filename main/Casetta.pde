class Casetta extends Casa {
  int x;
  int y;
  int sx;
  color c;
  int lato;
  int porta;

  Casetta() {
    super();
    super.c=(255);
    porta=10;
  }

  void disegna() {
    super.disegna();
    fill(255);
    square(super.x + 160, super.y + 170, porta);
  }

  void muovi() {
    super.x+=super.sx;
    if (super.x > width) {
      super.x=-170;
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
