//import java.util.*;
//import java.util.Iterator;
class Tank {
  int x, y, w, h, floor_height;
  ArrayList<Animal> animals;
  //Iterator<Animal> animalIterator;
  color WATER = #00FFFF;
  color SAND = color(246, 215, 176);;
  
  Tank(int x, int y, int w, int h, int floor_height){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.floor_height = floor_height;
    animals = new ArrayList<Animal>();
  }
  
  void display(){
    fill(WATER);
    rect(x,y,w,h);
    fill(SAND);
    rect(x,y+h-floor_height, w, floor_height);
    for (Animal a: animals){
      a.display();
    }
  }
  
  
  
  //void populate(int n){
  //  for (int i = 0; i<n; i++){
  void addAnimal (int x, int y) {
    //if(x < w && y > h) {
      int species = (int) random(5);
      if(species == 0){
        animals.add(new Fish(x, y, this));
      }
      if(species == 1){
        animals.add(new Goldfish(x, y,this));
      }
      if(species == 2){
        animals.add(new Octopus((int) random(x,x+w), (int) random(y + h - floor_height),this));
      }
      if(species == 3){
        animals.add(new Starfish(x, y,this));
      }
      if(species == 4){
        animals.add(new Crab(x, y, this));
      }
    }
  
  //nimals.add(new Fish((int) random(x,x+w), (int) random(y + h), this));
  //    }
  //    if(species == 1){
  //      animals.add(new Goldfish((int) random(x,x+w), (int) random(y + h),this));
  //    }
  //    if(species == 2){
  //      animals.add(new Octopus((int) random(x,x+w), (int) random(y + h - floor_height),this));
  //    }
  //    if(species == 3) {
  //      animals.add(new SineFish((int) random(x,x+w), (int) random(y + h),this));
  void moveAnimals(){
    for (Animal a: animals){
      a.move();
    }
  }
  //nimals.add(new Fish((int) random(x,x+w), (int) random(y + h), this));
  //    }
  //    if(species == 1){
  //      animals.add(new Goldfish((int) random(x,x+w), (int) random(y + h),this));
  //    }
  //    if(species == 2){
  //      animals.add(new Octopus((int) random(x,x+w), (int) random(y + h - floor_height),this));
  //    }
  //    if(species == 3) {
  //      animals.add(new SineFish((int) random(x,x+w), (int) random(y + h),this));
  //void clean(){
  //  Iterator<Animal> animalIterator = animals.iterator();
  //  while(animalIterator.hasNext()){
  //    Animal a = animalIterator.next();
  //    if(a.remove){
  //      animalIterator.remove();
  //    }
  //  }
  //}
  
  void interactions(){
    for (Animal a: animals){
      a.interaction(animals);
    }
  }
  
  PVector bottomCorner(){
    return new PVector(x+w,y+h);
  }
  
  PVector topCorner(){
    return new PVector(x,y);
  }
  
}
