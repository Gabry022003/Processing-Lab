// nota prima (semplice)  mezzo alla linea,si sposta verso destra in modo lineare
class Semplice {
  int x;
  int y;
  int speed_x;
  int d;

  Semplice() {
    x=(int(random(0, width)));
    y=(int(random(0, height)));
    speed_x=(int(random(2, 4)));
    d=30;
  }


  void disegna() {
    fill(0);
    circle(x, y, d);
    strokeWeight(4);
    line(x+15, y, x+15, y-50);
  }

  void muovi() {
    x+=speed_x;
  }

  void starta() {
    disegna();
    muovi();
  }
}
