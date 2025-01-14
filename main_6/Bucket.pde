class Bucket {
  int x;
  int y;
  int sy;
  color c;

  Bucket() {
    x=(int)(random(25, 475));
    y=450;
    sy=(int)(random(4, 8));
  }



  void disegna() {
    fill(127);
    //circle(x, y, 30);
      quad(x+35, y, x, y+40, x+120, y+40, x+85, y);
  }

  void muovi() {
    x=mouseX;
    x=constrain(mouseX,0,width-120);
  }

  boolean raccolta(Egg e) {
    if (dist(x, y, e.x, e.y)<40) {
      e.rimuovi();
      return true;
    }
    return false;
  }

  void starta() {
    disegna();
    muovi();
  }
}
