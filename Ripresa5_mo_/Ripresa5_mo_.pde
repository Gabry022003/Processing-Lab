/* fare un monitor con sfondo random e che va da sinistra a destra se esce dalla canvas rispunta a sinistra
fare un'altro monitor che rimbalza nei bordi della canvas ma appena passo il ouse diventa nero con una linea diagonale nello schermo e si ferma
*/
Monitor m;
Monitor_Retro m1;

void setup() {
  size(512, 512);
  m=new Monitor();
  m1= new Monitor_Retro();
}

void keyPressed() {
  if (key=='r' || key=='R') {
    setup();
  }
}

void draw() {
  background(255);
  m.starta();
  m1.starta_m();
}
