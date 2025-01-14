class Stain {
  int x;
  int y;
  int diametro;
  color c;
  int sx;
  int sy;

  Stain() {
    x=(int)(random(0, width));
    y=(int)(random(0, height));
    sx=(int)(random(-1, 1));
    sy=(int)(random(0, 4));
    diametro=30;
    c=(#C008FA);
  }

  void disegna() {
    noStroke();
    fill(c);
    circle(x, y, diametro);
  }

  void muovi() {
    x+=(int)(random(-1, 1));
    y+=(int)(random(0, 4));
  }

  void starta() {
    disegna();
    muovi();
  }

  void cancella() {
    x-=width*2;
    y = height;
  }
}
