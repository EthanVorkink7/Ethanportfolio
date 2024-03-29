   // Ethan Vorkink | April 17 | EtchASketch
int x, y;
PImage pic;

void setup() {
  //size(displayWidth, displayWidth);
  size(800, 658);
  x = width/2;
  y = width/2;
  pic = loadImage("Etch.png");
}

void draw() {
  image(pic,0,0);
  strokeWeight(4);
  //background(255);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(5);
    } else if (key == 's' || key == 'S') {
      moveDown(5);
    }
  } else if (key == 'a' || key == 'A') {
    moveLeft(5);
  } else if (key == 'd' || key == 'D') {
     moveRight(5);
  }
}


void mousePressed() {// Used for saving the image
saveFrame("line-######.png");     
}


void keyPressed() { // Used for drawing lines
}

void moveRight(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x+i, y);
  }
  x = x + rep;
}
void moveLeft(int rep) {
for (int i=0; i<rep; i=i+1) {
    point(x-i, y);
  }
  x = x - rep;
}

void moveUp (int rep) {
for (int i=0; i<rep; i=i+1) {
    point(x, y-i);
  }
  y = y - rep;
}

void moveDown (int rep) {
for (int i=0; i<rep; i=i+1) {
    point(x, y+i);
  }
  y = y + rep;

}
