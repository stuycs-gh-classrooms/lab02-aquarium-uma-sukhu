class Goldfish extends Animal {
  PImage img; 
  
  Goldfish(int x, int y, Tank myTank) {
    super(x, y, myTank);
    img = loadImage("goldfish-min-2.png");
    c = color(250, 176, 116);
    velocity.y += 3;
    this.foodChainID = size/2;
  }
  
  void display() {
    super.display();
    image(img, position.x-size/2, position.y-size/2, size, size);
  }
}
