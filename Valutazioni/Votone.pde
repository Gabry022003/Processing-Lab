class Votone extends Voto {
  int x;
  int y;
  int speed_x;
  int speed_y;
  int n;

  Votone() {
    x=(int)(random(0, width -30));
    y=(int)(random(0, height));
    speed_x=(int)(random(2, 10));
    n=(int)(random(18, 30));
  }

  void disegna() {
    noStroke();
    noFill();
    stroke(255);
    square(x, y, 30);
    noFill();
    textSize(28);
    text(n, x+2, y+25);
    fill(255);
    if (n>24) {
      textSize(28);
      text("LODE", x+2, y+50);
      fill(255);
    }
  }
}
