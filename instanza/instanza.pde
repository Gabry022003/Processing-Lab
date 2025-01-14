ArrayList<Ball> arr = new ArrayList<Ball>();

class Ball {
  int x;
  int y;
  int speed_y;
  int raggio = 20;
  color c;

  Ball() {
    x = int(random(0, width));
    y = int(random(0, -height));
    speed_y = int(random(5, 10));
    c = color(#ff0000);
  }

  void disegna() {
    y += speed_y;
    noStroke();
    fill(c);
    circle(x, y, raggio * 2);

    if (y > height || y < 0) {
      speed_y *= -1;
    }
  }
}

class Hyperball extends Ball {
  color cc = color(random(255), random(255), random(255));

  Hyperball() {
    super();
    this.c = cc;
    this.speed_y = int(random(2,3));
  }

  void disegna() {
    super.disegna();
    y += speed_y;
    noStroke();
    if (dist(mouseX, mouseY, x, y) < 50) {
      fill(c);
      circle(x, y, raggio * 2);
    }

    if (y > height || y < 0) {
      speed_y *= -1;
    }
  }
  
  void checkMouse() {
    if (dist(mouseX, mouseY, x, y) < 50) {
      c = color(random(255), random(255), random(255));
    }
  }
}

void keyPressed() {
  if (key == 'k' || key == 'K') {
    arr.add(new Ball());
  }
  if (key == 'p' || key == 'P') {
    arr.add(new Hyperball());
  }
  
   if (key == 'r' || key == 'R') {
    arr.clear();
  }
  
  /*if (key == 'g' || key == 'G') {
    for (Ball b : arr) {
      b.c = color(random(255), random(255), random(255));
    }
  }*/
}

void setup() {
  size(512, 512);
}

void draw() {
  background(0);
  for (int i = arr.size() - 1; i >= 0; i--) {
    Ball b = arr.get(i);
    b.disegna();
    
    if (b instanceof Hyperball) {
      Hyperball hyperball = (Hyperball) b;
      hyperball.disegna();
      hyperball.checkMouse();
    }
  }
}
