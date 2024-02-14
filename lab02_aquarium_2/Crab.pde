class Crab extends Animal {
  boolean reachedFloor = false;

  Crab(int x, int y, Tank myTank) {
    super(x, y, myTank);
  }

  void move() {
    if (velocity.y < 0) {
      velocity.y *= -1;
    }
    if (!reachedFloor) {
      if (position.y + sizeH >= myTank.bottomCorner().y - myTank.floor_height) {
        reachedFloor = true;
        velocity.y = 0; // Stop falling when reached the floor
        velocity.x = speedGenerator(); // Start crawling randomly left or right
      } else {
        position.y += velocity.y; // Continue falling until reached the floor
      }
    } else {
      // Randomly change direction when hitting the walls
      if (position.x + myTank.w >= width || position.x <= 0) {
        velocity.x *= -1;
      }
      position.x += 0; // Move horizontally
    }
  }

  void display() {
    fill(255, 0, 0); 
    stroke(0);
    rect(position.x, position.y, 20, 20);
  }
}
