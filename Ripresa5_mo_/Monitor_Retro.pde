class Monitor_Retro extends Monitor {
  int x;
  int y;
  int speed_x;
  color c;
  boolean fermo;
  Monitor_Retro() {
    x=width/2;
    y=height/2;
    speed_x=(int)random(2, 10);
    c=color(random(255), random(255), random(255));
  }

  void disegna() {
    fill(c);
    strokeWeight(4);
    rect(x, y, 180, 130);
  }

  void muovi() {
    if (!fermo) {
      x+=speed_x;
      if (x+180>width || x<0) {
        speed_x=-speed_x;
      }
    }
  }


  void controlla(Monitor_Retro m) {
    if (dist(mouseX, mouseY, m.x, m.y)<mouseX/2) {
      strokeWeight(4);
      fill(0);
      rect(m.x, m.y, 180, 130);
      stroke(255, 0, 0);
      strokeWeight(2);
      line(x, y, x + 180, y + 130);
      noStroke();
      fermo=true;
    } else {
      fermo=false;
    }
  }

  void starta_m() {
    disegna();
    muovi();
    controlla(this);
  }
}
