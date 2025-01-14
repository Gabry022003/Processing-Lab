class Bullet {
  int x;
  int y;
  color c=(#B505FC);
  int speed_y;
  int diametro=10;

  Bullet() {
  }
  Bullet(int x, int y) {
    this.x=x;
    this.y=y;
  }

  void disegna() {
    noStroke();
    fill(c);
    circle(x, y, diametro);
  }

  void muovi() {
    y-=abs(10);
  }

  void parti() {
    disegna();
    muovi();
  }
}
