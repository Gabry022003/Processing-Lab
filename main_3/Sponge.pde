class Sponge {
  int x;
  int y;
  int L;
  color c;

  Sponge() {
    L=30;
    c=color (200, 200, 100);
  }

  void disegna() {
    noStroke();
    fill(c);
    square(x, y, L);
  }

  boolean adsorb(Stain s) {
    if (dist(x, y, s.x, s.y)<L/2)
    {
      L+=(s.diametro/2);
      float r, g, b;
      r=(red(c)+red(s.c))/2;
      g=(green(c)+green(s.c))/2;
      b=(blue(c)+blue(s.c))/2;
      this.c=color(r, g, b);
      println("ci sei sopra");
      return true;
    }
    //println("non ci sei");
    return false;
  }

  void starta() {
    disegna();
    muovi();
  }

  void muovi() {
    x=mouseX;
    y=mouseY;
  }
}
