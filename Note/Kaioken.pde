class Kaioken {
  int x;
  int y;
  int speed_x;
  int speed_y;
  int d;

  boolean on;

  Kaioken() {
    x=(int(random(0, width)));
    y=(int(random(0, height)));
    speed_x=(int(random(1, 4)));
    speed_y=(int(random(1, 4)));
    d=30;
    on=true;
  }
  void disegna() {
    //noFill();
    fill(#FF1212);
    circle(x, y, d);
    strokeWeight(4);
    line(x+15, y, x+15, y-50);
    circle(x+50, y-10, d);
    line(x+65, y-10, x+65, y-60);
    line(x+15, y-30, x+65, y-40);
    line(x+15, y-50, x+65, y-60);

    line(x+30, y, x+30, y-50);
    circle(x+30, y-10, 20);
  }

  void muovi() {
    if (on) {
      x+=speed_x;
    }
  }

  void check() {
    if (dist(mouseX, mouseY, this.x, this.y)<d) {
      on=false;
    } else {
      on=true;
    }
  }


  void starta() {
    disegna();
    check();
    muovi();
  }
}
