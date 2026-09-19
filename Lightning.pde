int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(500,500);
  strokeWeight(2);
  background(255, 128, 0);
  
  stroke(0,0,0);
  fill(250,0,0);
  ellipse(250,200,510,400); //outside of the bowl
  
  fill(210, 180, 140);
  ellipse(250,150,600,300); //inside of the bowl
  
  noStroke();
  fill(150, 75, 0);
  ellipse(250,165,570,250); //soup
  
  stroke(0,0,0);
  fill(255,255,255);
  rect(10,430,480,15); //chopsticks1
  rect(10,450,480,15); //chopsticks2


}
void draw()
{
stroke(255, 255, 0);
while (endX <= width) {
    endX = startX + (int)(Math.random() * 10);
    endY = startY + (int)(Math.random() * 19) - 9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
}

}
void mousePressed()
{
startX = 0;
    startY = 150;
    endX = 0;
    endY = 150;
}
