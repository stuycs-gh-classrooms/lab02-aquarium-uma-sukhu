class Tank {
  
  ArrayList<Animal> animals;
  int tX;
  int tY;
  int tW;
  int tH;
  int floor;
  
  Tank(int tankx, int tanky, int tankw, int tankh, int floorh) {
    animals = new ArrayList<Animal>();
    tX = tankx;
    tY = tanky;
    tW = tankw;
    tH = tankh;
    floor = floorh;
  }
  
  void display () {
    fill(150);
    rect(0, 0, tW, height-tH);
    fill(0, 255, 255);
    rect(tX, tY, tW, tH - floor);
    fill(246, 215, 176);
    rect(tX, tY + (tH - floor), tW, floor);
  }
  
  void addAnimal (int x, int y) {
    int type = int(random(2));
    if(y > tankY + (tankH - floorH)) {
      animals.add(new Starfish(x, y));
    }
    else if(type == 0) {
      animals.add(new Goldfish(x, y));
    }
    else if(type == 1) {
      animals.add(new Animal(x, y));
    }
  }
  
  void moveAnimals() {
    for(int i = 0; i < animals.size(); i++) {
      animals.get(i).display();
      animals.get(i).move();
    }
  }
  
}
