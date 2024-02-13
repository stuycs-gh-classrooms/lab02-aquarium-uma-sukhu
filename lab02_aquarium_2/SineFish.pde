class SineFish extends Animal {
  float theta = 0;
  float angleSpeed;
  float refy;
  
  SineFish(int x, int y, Tank myTank) {
    super(x, y, myTank);
    angleSpeed = random(0.05, 0.2);
    refy = position.y;
  }

 void move() {
    position.x += velocity.x;
    theta += angleSpeed;
    position.y = (int)(refy + 50 * sin(theta)); 
    if (position.x + sizeL >= width || position.x <= 0) {
      velocity.x *= -1;
    }
  }

  void display() {
    fill(255, 0, 255); 
    stroke(0);
    rect(position.x, position.y, sizeH, sizeL);
  }
}