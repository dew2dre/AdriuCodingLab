import java.util.Random;

class Pipes
{
//Variable for the image of the bird
PImage topPipe = loadImage("topPipe.png");
PImage bottomPipe = loadImage("bottomPipe.png");

//Four varibles  for the width and height of the top and bottom pipes
int xCoordinateTop;
int yCoordinateTop;
int xCoordinateBottom;
int yCoordinateBottom;

//Four varibles  for the location of the top and bottom pipes
int widthTop = topPipe.width;
int heightTop = topPipe.height;
int widthBottom = bottomPipe.width;
int heightBottom = bottomPipe.height;

//Varible to create random numbers
Random rand = new Random();

//Constructor to create the pipes
Pipes (int xTop,int yTop,int xBottom,int yBottom )
{
  xCoordinateTop = xTop;
  yCoordinateTop = yTop;
  xCoordinateBottom = xBottom;
  yCoordinateBottom = yBottom;
  
  
  //Draw the pipes in on the canvas
  image(topPipe,xCoordinateTop,yCoordinateTop); 
  image(bottomPipe,xCoordinateBottom,yCoordinateBottom); 
}

//Method to move the pipes
void move ()
{
  //Move the pipes from right to left across the screen
  xCoordinateTop = xCoordinateTop - 3;
  xCoordinateBottom = xCoordinateBottom - 3;
  
 //Conditional to move the pipe from the left back to the right 
  if(xCoordinateTop < - 150)
  {
   xCoordinateTop = 800;
   xCoordinateBottom = 800;
   //Placing the bottom pipes y-coordinate between 250 and 700
   yCoordinateBottom = rand.nextInt(450) + 250;
   yCoordinateTop = yCoordinateBottom - 800;
  } 
 
  
   //Re-draw the pipes in on the canvas
  image(topPipe,xCoordinateTop,yCoordinateTop); 
  image(bottomPipe,xCoordinateBottom,yCoordinateBottom);
}

boolean checkIfHit(int x, int topY, int bottomY)
{

return false;
}
//Method to make the pipes stop when the bird hits
//them
void endSequence()
{

}
//Method to return the x-coordinate of top pipe
int getXTop()
{
  return xCoordinateTop;
}
  //Method to return the y-coordinate of top pipe
int getYTop()
{
  return yCoordinateTop;
}
//Method to return the width of the top pipe
int getWidthTop()
{
  return widthTop;
}
//Method to return the height of the top pipe
int getHeightTop()
{
  return heightTop;
}
  //Method to return the y-coordinate of top pipe
int getXBottom()
{
  return xCoordinateBottom;
}
  //Method to return the y-coordinate of top pipe
int getYBottom()
{
  return yCoordinateBottom;
}
//Method to return the width of the bottom pipe
int getWidthBottom()
{
  return widthBottom;
}
//Method to return the height of the bottom pipe
int getHeightBottom()
{
  return heightBottom;
}
}
