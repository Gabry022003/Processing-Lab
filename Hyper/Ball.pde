class Ball {

  int x, y,speed_y, R;
  color c;

  Ball() {
    x = (int)(random(256-50));
    y = (int)(random(256));
    speed_y = 5;
    R=50;
    c=(#FF0516);
  }

  void disegna() {
    noStroke();
    fill(c);
    circle(x, y, R);
  }

  void muovi() {
    y += speed_y;
    if (y + R / 2 >= height || y - R / 2 <= 0) {
      speed_y = -speed_y;
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
