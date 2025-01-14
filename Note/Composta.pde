// derivata nota composta centro tra le due line ,si sposta verso sinistra in modo su e giu
class Composta {
  int x;
  int y;
  int speed_x;
  int speed_y;
  int d;

  boolean on;
  Composta() {
    x=(int(random(0, width)));
    y=(int(random(0, height)));
    speed_x=(int(random(-1, -4)));
    speed_y=(int(random(1, 4)));
    d=30;
    on=false;
  }


  void disegna() {
    noFill();
    circle(x, y, d);
    strokeWeight(4);
    line(x+15, y, x+15, y-50);
    circle(x+50, y-10, d);
    line(x+65, y-10, x+65, y-60);
    line(x+15, y-30, x+65, y-40);
    line(x+15, y-50, x+65, y-60);
  }

  void muovi() {
    x+=speed_x;
    y+=speed_y;
    if (frameCount%10==0) {
      speed_y=-speed_y;
    }
  }

  boolean hit(Semplice s) {
    if (dist(s.x, s.y, this.x, this.y)<d && !on ) {
      on=true;
      s.x*=512;
      s.y*=512;
      this.x*=512;
      this.y*=512;
      return true;
    }
    return false;
  }


  void starta() {
    disegna();
    muovi();
  }
}
