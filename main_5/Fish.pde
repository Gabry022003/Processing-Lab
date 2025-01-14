class Fish {
  int x;
  int y;
  int sx;
  int sy;
  int D;

  color c;

  Fish() {
    x=(int)(random(0, width));
    y=(int)(random(0, height));
    sx=(int)(random(1, 4));
    sy=(int)(random(-1.5, 1.5));
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void disegna() {
    fill(c);
    ellipse(x, y, 80, 50);
    beginShape(TRIANGLES);
    vertex((x-(50/2)), y);
    vertex((x-(80/2)-40), y+25);
    vertex((x-(80/2)-40), y-25);
    endShape(CLOSE);

    fill(0);
    circle(x+20, y-10, 10);
  }

  void muovi() {
    if (x>width || x<0) {
      sx*=-1;
    }

    x+=sx;
    y+=sy;
  }

  Bubble gene() {
    Bubble b= new Bubble();
    return b;
  }

  void starta() {
    disegna();
    muovi();
  }
}
