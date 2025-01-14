class Dancer extends Man {
  int x;
  int y;
  int speedx;


  Dancer() {
    x = (int)random(width);
    y = (int)random(height);
    speedx = (int)random(2, 5);
  }

  void disegna() {
    noFill();
    stroke(255, 0, 0);
    strokeWeight(3);

    circle(x, y, 20);
   
    line(x, y+10, x, y+40);
 
    line(x-20, y+25, x+20, y+25);
    
    line(x+20, y+10, x+20, y+25); //dx
    line(x-20, y+25, x-20, y+40); //sx

    line(x, y+40, x+15, y+55); //dx
    line(x, y+40, x-15, y+55); //sx

  }



  void muovi() {
    x += speedx;
    if ( x+20 > width) {
      speedx *= -1;
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
