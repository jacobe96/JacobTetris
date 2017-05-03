float squareSize = 50;
float xSpeed = 0; 
float ySpeed = random(2,5);
float x = 0; 
float y = 0; 


void setup() {
  size(800,800);
  x = 400;  
  y = -200;

}

void draw() {
  background(255); 
  fill(255,0,0);
  stroke(0,0,255); 
  strokeWeight(2); 
  rect(x,y,squareSize,squareSize); 
  checkEdges(); 
  x = x + xSpeed; 
  y = y + ySpeed;
  

}

void checkEdges() {
  if(leftCollision()) { 
    xSpeed = 0; 
  } else if (rightCollision()) {
    xSpeed = 0;
  }
  if(topCollision()) {
    ySpeed = -ySpeed;
  } else if (bottomCollision()) {
    ySpeed = 0;
  }

}

boolean leftCollision() {
  return x <= 0 && xSpeed < 0;
} 

boolean rightCollision() {
  return x >= width - squareSize && xSpeed > 0;
}

boolean topCollision() {
  return y <= 0 && ySpeed < 0;
}

boolean bottomCollision() {
  return y >= height - squareSize && ySpeed > 0;
}