class Cifrotta extends Cifra {

  Cifrotta() {
    super();
  }

  void disegna()
  {
    if (super.indice >=6 && super.indice <=10) {
      textSize(32);
      stroke(255);
      noFill();
      circle(super.x+8, super.y-12, 30);
      fill(255);
      text(super.numeri[super.indice], x, y);
    }
  }

  void muovi() {
    super.y -= super.sy;
    if (super.y < 0) {
      //println("Superata");
      super.y = height;
      super.x = (int)(random(0, width));
      this.sy = (int)(random(2, 10));
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
