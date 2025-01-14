class Cifra {
  int [] numeri={0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  int x;
  int y;
  int indice;
  int sy;
  color c;

  Cifra() {
    x=(int)(random(0, width));
    y=(int)(random(0, height));
    indice=(int)(random(0, numeri.length));
    sy=(int)(random(2, 10));
    c=(#FFF000);
  }

  void disegna()
  {
    if (indice >=0 && indice <=5) {
      textSize(32);
      fill(c);
      text(numeri[indice], x, y);
    }
  }

  void muovi() {
    y+=sy;
    if (y>height) {
      y=0;
      x=(int)(random(0, width));
      sy=(int)(random(2, 10));
    }
  }

  void starta() {
    disegna();
    muovi();
  }
}
