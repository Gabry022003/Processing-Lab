class Bubble {
  int x;
  int y;
  int sx;
  int sy;
  int D;

  Bubble() {
    x=(int)(random(0, width));
    y=(int)(random(0, height));
    sy=(int)(random(1, 4));
    D=(int)(random(10, 30));
  }

  void disegna() {
    noFill();
    //fill(#4DA7FF);
    circle(x, y, D);
    fill(255);
    circle(x-D/2+D/4, y-D/2+D/4, D/4);
  }

  void muovi() {
    y-=sy;
  }

  void starta() {
    disegna();
    muovi();
  }
}
