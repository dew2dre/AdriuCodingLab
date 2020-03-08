int xCoordinate = 0;
int yCoordinate = 0;
void setup ()
{
  size(500, 500);
  background(255, 0, 0);
}

void draw()
{
  background(255, 0, 0);  
  stroke(255, 255, 255);
  fill(0, 0, 250);
  ellipse(xCoordinate, yCoordinate, 300, 300);
  moveDownAndRight(8);
}


void mouseDragged()
{
xCoordinate = mouseX;
//yCoordinate = mouseY; 

}
  void moveDownAndRight(int speed)
{
  xCoordinate = xCoordinate +speed;
  yCoordinate = yCoordinate +speed;
}
