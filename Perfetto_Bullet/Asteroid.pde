class Asteroid {
  int x;
  int y;
  int speed_x;
  int  speed_y;
  int diametro=50;
  int spes=4;
  boolean on;

  Asteroid() {
    x=(int)(random(0, width));
    y=(int)(random(0, 256));
    speed_x=(int)(random(2, 7));
    speed_y=(int)(random(-2, 2));
    diametro=50;
    spes=4;
    on=true;
  }

  void disegna() {
    stroke(#FFF000);
    strokeWeight(spes);
    if (on) {
      fill(#C10606);
      circle(x, y, diametro);
    }
    if (!on) {
      fill(#C3BCC6);
      circle(x, y, diametro);
    }
  }

  void muovi() {
    if (!on) {
      x+=speed_x;
      y+=abs(0.2);
    } else {
      x+=speed_x;
      y+=speed_y;
    }
  }

  void colpito(Bullet b) {
    if (dist(x, y, b.x, b.y)<30 && on) {
      on=false;
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
