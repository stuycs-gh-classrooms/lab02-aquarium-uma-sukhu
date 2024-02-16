Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;


void setup() {
  size(600,600);
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.interactions();
  t.clean();
  t.display();
}

void mouseClicked() {
  t.populate(10);
}

void keyPressed() {
  if(key == '1') {
    t.addAnimal(1);
  }
  if(key == '2'){
    t.addAnimal(2);
  }
  if(key == '3'){
    t.addAnimal(3);
  }
  if(key == '4'){
    t.addAnimal(4);
  }
  if(key == '0'){
    t.addAnimal(0);
  }
}
    
