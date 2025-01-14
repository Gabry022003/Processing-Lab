ArrayList<Bullet>b= new ArrayList<Bullet>();
ArrayList<Asteroid>a= new ArrayList<Asteroid>();
//Asteroid test;
Gun g;
void setup() {
  size(512, 512);
  frameRate(60);
  //b=new Bullet(width/2, height/2);
  g= new Gun(width/2, (height/2)+210);
  // test=new Asteroid();
}

void draw() {
  background(#0DD8FA);

  if (((int)random(0, 100)<5)) {
    a.add(new Asteroid());
  }

  for (Bullet bi : b) {
    bi.parti();
  }

  for (Asteroid ast : a) {
    ast.starta();
    for (Bullet bi : b) {
      ast.colpito(bi);
    }
  }
  g.gungun();
}

/*
void mousePressed() {
 
 if (mouseButton==RIGHT) {
 for (Asteroid ast : a) {
 ast.on=true;
 }
 }
 }
 */

void keyPressed() {
  if (key=='a') {
    b.add(g.shot());
  }
  if (key=='c'|| key=='r') {
    b.clear();
    a.clear();
    setup();
  }
  if (key=='s') {
    for (Asteroid ast : a) {
      ast.on=true;
    }
  }
}
