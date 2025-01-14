Semplice s;
Composta c;
ArrayList<Kaioken> k;
Kaioken g;
int x=0;
int y=30;
int sp=0;

void setup() {
  size(512, 512);
  s=new Semplice ();
  c=new Composta();
  k=new ArrayList<>();
}
// note musicali back pentagramma
void draw() {
  background(255);

  for (int i=0; i<5; i++) {
    stroke(5);
    line(x, y+sp, width, y+sp);
    sp+=100;
  }
  sp=0;

  s.starta();
  c.starta();

  for (Kaioken ke : k) {
    ke.starta();
  }

  if (c.hit(s)) {
    println("ok");
    k.add(new Kaioken());
  }

  /*if (s.x+15>c.x-c.d/2 && s.y-50<c.y-c.d/2 && s.y-s.d/2>c.y-60) {
   s.y=-10000;
   c.y=+10000;
   println("ok");
   k.add(new Kaioken());
   }*/
}
