class Octopus extends Animal{
  PImage img;
  
  Octopus(int x,int y, int size, Tank myTank){
    super(x,y,size,myTank);
    img = loadImage("octopus.png");
    this.foodChainID = size*2;
    c = #00FF00;
  }
  
  Octopus(int x,int y, Tank myTank){
    this(x,y,10, myTank);
  }
  
  void display(){
    super.display();
    image(img, position.x-size/2, position.y-size/2, size, size); 
  }
  
  void updateFoodChain(Animal other){
    foodChainID = other.foodChainID/2 + foodChainID;
  }
  
  
}
