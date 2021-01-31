//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

public class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x = 50;
int y = 100;

// Add a constructor with parameters to initialize each variable.
public Segment (int x, int y) {
  this.x = x;
  this.y = y;

}
}

//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*

Segment head;
int foodX;
int foodY;

int direction = UP;
int piecesOfFood = 0;
//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size (500,500);
head = new Segment(75,60);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
    foodX = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
background(#3B14F2);
drawFood();
drawSnake();
}

void drawFood() {
  //Draw the food
  fill(#77DE83);
  foodX = ((int)random(50)*10);
  foodY = ((int)random(50)*10);
  rect(80,90,20,20);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  fill(#FFBC12);
  rect(75,60, 20, 20);
 
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 

}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
  if (key == CODED) {
     if(keyCode == UP) {
       direction = up;
     } else if (keyCode == DOWN) {
       direction = DOWN;
     } else if (keyCode == LEFT) {
       direction  = RIGHT;
       else if (keyCode == RIGHT) {
       direction = LEFT;
     }
}
  
}
void move() {
  //Change the location of the Snake head based on the direction it is moving.
  
    
  switch(direction) {
  case UP:
    direction UP;
    break;
  case DOWN:
    // move head down here 
    break;
  case LEFT:
   // figure it out 
    break;
  case RIGHT:
    // mystery code goes here 
    break;
  }
  
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
}
