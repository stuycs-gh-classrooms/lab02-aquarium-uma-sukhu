class Fish extends Animal{
  PImage img;
  
  Fish(int x,int y, int size, Tank myTank){
    super(x, y, size, myTank);
    img = loadImage("fish.png");
    this.foodChainID = size/2;
    c = #FFFF00;
  }
  
  Fish(int x,int y, Tank myTank){
    this(x,y,10, myTank);
  }

  void display(){
    super.display();
    image(img, position.x-size/2, position.y-size/2, size, size); 
  }
  
  boolean inYBounds(PVector nextPos){
    return nextPos.y - size/2  <= myTank.topCorner().y ||
        nextPos.y + size/2  >= myTank.bottomCorner().y;
  }
  
  void updateFoodChain(Animal other){
    foodChainID = other.foodChainID*2 + foodChainID;
  }
  
}
