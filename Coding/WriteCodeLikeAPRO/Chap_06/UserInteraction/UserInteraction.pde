int xCoordinate = 0;
int yCoordinate = 0;
int speed = 5;

void setup ()
{
  size(500, 500);
  background(255, 0, 0);
}

void draw()
{
  background(255, 0, 0);  
  if(mousePressed == true)
  {
  stroke(255, 255, 255);
  fill(0, 0, 255);
  }
  else{
  stroke(255, 255, 255);
  fill(0, 255, 0);
  }
  
  ellipse(mouseX, mouseY, 300, 300);

}

void keyPressed()
{
if(key == 'w')
 { 
  yCoordinate =yCoordinate-speed;
 }
 else if (key == 'a')
 {
 xCoordinate =xCoordinate-speed;
 }
else if (key == 's') 
{
    yCoordinate =yCoordinate+speed;
}
else if (key == 'd') 
{
   xCoordinate =xCoordinate+speed;
}
}

void moveDownAndRight(int speed)
{
xCoordinate = xCoordinate + speed;
yCoordinate = yCoordinate + speed; 

}
