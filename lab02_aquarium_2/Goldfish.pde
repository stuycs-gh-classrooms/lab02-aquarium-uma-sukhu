class Goldfish extends Animal {
  
  Goldfish(int px, int py, Tank myTank) {
    super(px, py, myTank);
    c = color(247, 114, 5);
    velocity.y += 3;
    this.foodChainID = size/2;
  }
  
}
