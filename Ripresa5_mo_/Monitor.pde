class Monitor {
  int x;
  int y;
  int speed_x;
  color c;
  Monitor() {
    x=(int)random(0, width);
    speed_x=(int)random(2, 10);
    c=color(random(255), random(255), random(255));
  }

  void disegna() {
    fill(c);
    strokeWeight(4);
    rect(x, y, 180, 130);
  }
  void muovi() {
    x+=speed_x;
    if (x>width || x<0) {
      x=0;
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
