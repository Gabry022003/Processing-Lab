class Volcano {
  int x;
  int y;
  int h;
  color c;

  Volcano() {
    x=(int)(random(width-150));
    y=height-61;
    h=60;
    c=color(#964b00);
  }

  void disegna() {
    fill(c);
    quad(x+35, y, x, y+h, x+120, y+h, x+85, y);
  }

  FireBall spara() {
    FireBall f1 = new FireBall();
    return f1;
  }

  void starta() {
    disegna();
  }
}
