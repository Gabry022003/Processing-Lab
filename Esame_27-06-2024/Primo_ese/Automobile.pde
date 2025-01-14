class Automobile {

  int x;
  int y;
  int speed_x;
  int larg;
  int h;
  color c;
  int d;

  Automobile() {
    x = (int)(random(width));
    y = (int)(random(height));
    speed_x = (int)(random(2, 5));
    larg = (int)(random(50, 200));
    h = larg / 2;
    c = color(#F50000);
    d = h/2;
  }

  void disegna() {
    fill(c);
    rect(x, y, larg, h);
    fill(0);
    circle(x + larg / 3, y + h, d);
    circle(x + 2 * larg / 3, y + h, d);
  }

  void muovi() {
    x += speed_x;
    if (x > width) {
      x = 0;
    }
  }

  void tutto() {
    disegna();
    muovi();
  }
}
