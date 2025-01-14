class Gun {

  int x=0;
  int y=0;
  int base=20;
  int h=70;

  Gun(int x, int y) {
    this.x=x;
    this.y=y;
    base=20;
    h=70;
  }

  void disegna() {
    noStroke();
    stroke(4);
    fill(#C3BCC6);
    rect(x, y, base, h);
  }

  void muovi() {
    x=mouseX;
    x=constrain(mouseX, 0, 490);
  }

  Bullet shot() {
    Bullet r= new Bullet(mouseX+10, y);
    return r;
  }

  void gungun() {
    disegna();
    muovi();
  }
}
