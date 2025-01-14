class AutomobileElettrica extends Automobile {
  boolean passato;

  AutomobileElettrica() {
    super();
    c = color(0, random(1,255), 0);
    d = h / 2;
    passato = false;
  }

  void triangolo() {
    
    int triHeight = h / 2;
    int triBase = larg / 3;
    int triX = x + larg / 2;
    int triY = y - triHeight;

    int[] xPoints = {triX - triBase / 2, triX, triX + triBase / 2};
    int[] yPoints = {y, triY, y};

    fill(255, 255, 0);
    triangle(xPoints[0], yPoints[0], xPoints[1], yPoints[1], xPoints[2], yPoints[2]);
  }

  void disegna() {
    fill(c);
    rect(x, y, larg, h);
    fill(0);
    circle(x + larg / 3, y + h, d);
    circle(x + 2 * larg / 3, y + h, d);
    if (!passato) {
      triangolo();
    }
  }

  void muovi() {
    x += speed_x;
    if (x > width) {
      passato = true;
      x = 0;
    }
  }
}
