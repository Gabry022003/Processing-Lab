class Egg {
  int x;
  int y;
  int sy;

  Egg() {
    x=(int)(random(25, 475));
    y=(int)(random(0, 0));
    sy=(int)(random(4, 8));
  }

  void disegna() {
    noStroke();
    fill(255);
    ellipse(x, y, 15, 20);
  }

  void muovi() {
    y+=sy;
  }

  void starta() {
    disegna();
    muovi();
  }

  void rimuovi() {
    x=-500;
    y=-500;
  }
}
