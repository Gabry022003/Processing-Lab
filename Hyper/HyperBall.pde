class HyperBall extends Ball {

  int x, y,speed_y, R;
  color c;

  HyperBall() {
    x = (int)(random(256, 512-50));
    y = (int)(random(256));
    speed_y = 5;
    R=50;
    c=(#0528FF);
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

  void controlla() {
    if (dist(mouseX, mouseY, x, y)<50) {
      c=color(random(255), random(255), random(255));
    }
  }

  void starta() {
    disegna();
    muovi();
    controlla();
  }
}
