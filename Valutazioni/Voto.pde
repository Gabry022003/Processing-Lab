class Voto {
  int x;
  int y;
  int speed_x;
  int speed_y;
  int n;

  Voto() {
    x=(int)(random(0, width -30));
    y=(int)(random(0, height));
    speed_x=(int)(random(2, 10));
    n=(int)(random(18, 30));
  }

  void disegna() {
    noFill();
    stroke(#F7F000);
    square(x, y, 30);
    textSize(28);
    text(n, x+2, y+25);
    fill(#F7F000);
    x+=speed_x;
    if (x<0 || x+30>width) {
      speed_x=-speed_x;
    }
  }
}
