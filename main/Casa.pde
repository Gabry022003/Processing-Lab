class Casa {
  int x;
  int y;
  int sx;
  color c;
  int lato;

  Casa() {
    x=(int)(random(0, width));
    y=(int)(random(0, height));
    sx=(int)(random(2, 10));
    c=(#FFF000);
    lato=30;
  }

  void disegna() {
    stroke(c);
    noFill();
    triangle(x + 151, y + 150, x + 165, y + 135, x + 179, y + 150);
    square(x + 150, y + 150, 30);
  }

  void muovi() {
    x+=sx;
    if (x+160 > width || x+160<0) {
      sx*=-1;
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
