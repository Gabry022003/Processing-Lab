float gravity = 0.5; 
Moon luna = new Moon();

class Moon {
  float x = 0; 
  float y = 0; 
  float speed_y = 0; 
  
  void disegna() {
    fill(255); 
    circle(x + 250, y + 150, 150); 
  }
  
 
  void crateri() {
    noStroke();
    fill(127, 100); 
 
    circle(x + 250, y + 120, 20);
    circle(x + 270, y + 170, 30);
    circle(x + 210, y + 170, 25);
  }
  
  
  void rimbalzo() {
    y += speed_y;
    speed_y += gravity; 
    
    if (y + 150 > height) { 
      y = height - 190; 
      speed_y = -speed_y * 0.9;
    }
  }
}

void setup() {
  size(512, 512); 
}

void draw() {
  background(10, 20, 80); 
  luna.disegna(); 
  luna.crateri(); 
  luna.rimbalzo(); 
}
