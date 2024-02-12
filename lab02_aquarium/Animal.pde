class Animal {
  
  PVector position;
  PVector velocity;
  int sizeL;
  int sizeH;
  color body;
  
  Animal(int px, int py) {
    velocity = new PVector(pow(-1, int(random(2))), pow(-1, int(random(2))));
    position = new PVector(px, py);
    sizeL = 30;
    sizeH = 10;
    body = color(255, 0, 255);
  }
  
  void display() {
    fill(body);
    rect(position.x, position.y, sizeL, sizeH);
  }
  
  void move() {
    position.add(velocity);
    
    if(position.y + sizeH > height || position.y < tankY) {
      velocity.y *= -1;
      velocity.x *= -1;
    }
    
    if(position.x < tankX || position.x + sizeL > tankX + tankW) {
      velocity.x *= -1;
      velocity.y *= -1;
    }
  }
}
