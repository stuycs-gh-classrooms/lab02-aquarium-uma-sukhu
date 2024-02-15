class Starfish extends Animal {
  
  int numPoints;
  
  Starfish(int px, int py, Tank myTank) {
    super(px, py, myTank);
    c = color(234, 132, 36);
    numPoints = int(random(5, 8));
  }

  
  void display(){
    fill(c);
    circle(position.x,position.y, size);
    if(velocity.x > 0) {
         beginShape();
    vertex(position.x - (size/2), position.y);
    vertex(position.x - size, position.y + size);
    vertex(position.x - size, position.y - size);
    endShape(CLOSE);
    }
    else{
    beginShape();
    vertex(position.x + (size/2), position.y);
    vertex(position.x + size, position.y + size);
    vertex(position.x + size, position.y - size);
    endShape(CLOSE);
    }
    }
      

   void move() {
     super.move();
         velocity.y = 0;
       
   }
   
  }
