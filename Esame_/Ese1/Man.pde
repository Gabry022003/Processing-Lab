class Man {

  int x;
  int y;
  int speedx;


  Man() {
    x = (int)random(width);
    y = (int)random(height);
    speedx = (int)random(2, 5);
  }

  void disegna() {
    noFill();
    stroke(255);
    strokeWeight(3);
    //testa
    circle(x, y, 20);
    //corpo
    line(x, y+10, x, y+40);
    //linea orizzontale
    line(x-20, y+25, x+20, y+25);
    //piede
    line(x, y+40, x+15, y+55); //dx
    line(x, y+40, x-15, y+55); //sx
  }


  void muovi() {
    x += speedx;
    if ( x+20 > width || x-20 < 0) {
      speedx *= -1;
    }
  }
}
