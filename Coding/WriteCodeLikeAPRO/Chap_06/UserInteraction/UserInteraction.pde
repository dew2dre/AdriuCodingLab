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
  ellipse(mouseX, mouseY, 300, 300);

}


void mouseDragged()
{
xCoordinate = mouseX;
yCoordinate = mouseY; 

}
