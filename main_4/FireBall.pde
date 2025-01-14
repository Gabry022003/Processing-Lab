class FireBall {
  int x;
  int y;
  int sx;
  int sy;
  int D;
  color c;

  FireBall() {
    x=(int)(random(0, width));
    y=(int)(random(0, height-55));
    sx=(int)(random(-2, 2));
    sy=(int)(random(2, 8));
    D=(int)(random(5, 10));
    c=(#FA0828);
  }

  void disegna() {
    noStroke();
    fill(c);
    circle(x, y, D);
  }

  void muovi() {
    x+=sx;
    y+=sy;
    y+=0.1;
  }

  void starta() {
    disegna();
    muovi();
  }
}
