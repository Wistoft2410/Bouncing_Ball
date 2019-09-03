float ballX = 500;
float ballY = 500;
float xSpeed = 12;
float ySpeed = 10;
float kasseX, kasseY, kasseSize = 1000;
void setup() {
  size(1000, 1000);
}

void draw() {
  kasseSize -= 0.5;
  kasseY += 0.25;
  kasseX += 0.25;
  ballX += xSpeed;
  ballY += ySpeed;

  clear();
  
  fill(0,0,50);
  rect(kasseX, kasseY, kasseSize, kasseSize);
  
  fill(0,250,0);
  ellipse(ballX, ballY, 16, 16);
  
  
  if (ballX+10>=kasseX + kasseSize) {
    xSpeed =- 12;
  }
  
  if(ballY+10>=kasseX + kasseSize) {
    ySpeed =-10;
  }
  
  if(ballY-10<=kasseX) {
    ySpeed=10;
  }
  
  if (ballX-10<=kasseX) {
    xSpeed=12;
  }
  
  if(kasseSize<=100) {
    kasseSize = 1000;
    kasseX = 0;
    kasseY = 0;
  }
}
  
  
