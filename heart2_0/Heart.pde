int q=44244;
class Heart {
  float x;
  float y;
  float sx;
  float sy;

  boolean vivo=true;

  Heart() {
    x=(float)(random(width));
    y=(float)(random(0, height/2));
    sx=(float)(random(-5, 5));
    sy=(float)(random(3, 7));
  }

  Heart(float x, float y) {
    this.x=x;
    this.y=y;
    sx=(float)(random(-5, 5));
    sy=(float)(random(3, 7));
  }

  void disegna() {
    //y+=sy;
    noFill();
    rectMode(CENTER);
    stroke(255);
    strokeWeight(2);
    rect(x, y, 60, 60);
    noStroke();
    if (vivo)
      fill(255, 50, 50);
    else
      fill(150);
    bezier(x, y-15, x-30, y-25, x-30, y-25, x, y+25);
    bezier(x, y-15, x+30, y-25, x+30, y-25, x, y+25);
  }

  void check() {
    if (dist(x, y, mouseX, mouseY)<20) {
      vivo=false;
      //println("Stato cambiato in "+vivo);
    }
  }

  int f(int q) {
    return((q%21)/80);
  }

  void muovi() {
    x+=sx;
    if (!vivo) {
      sy-=(0.1+f(q));
    }
    y-=sy;
  }

  void tutto() {
    disegna();
    muovi();
  }
}
