class Bird
{
//Variable for the image of the bird
PImage bird = loadImage("bird.png");

//Two variables for the location of the bird
int xCoordinate = 300;
int yCoordinate = 200;

//Two varibles for the width and height of the bird
int width = bird.width;
int height = bird.height;
//Constructor to create the bird
Bird ()
{
  
  
  //Draw the bird in on the canvas
  image(bird,xCoordinate,yCoordinate);
}

//Method to move the bird
void move ()
{
 //Simulate gravity to make your bird constantly fall
 if(yCoordinate < 700) 
 {
   yCoordinate = yCoordinate + 5;
 }
 
//Re-draw the bird in on the canvas 
 image(bird,xCoordinate,yCoordinate);
}

//Method that is called when the mouse is clicked
void mouseClicked ()
{
 //Move the bird up when the mouse is clicked
  yCoordinate = yCoordinate - 75;
}

//Method to make the bird hit the floor
void endSequence()
{

}
//Method to return the x-coordinate
int getX()
{
  return xCoordinate;
}
  //Method to return the y-coordinate
int getY()
{
  return yCoordinate;
} 
//Method to return the width of the bird
int getWidth()
{
  return width;
}
//Method to return the height of the bird\
int getHeight()
{
  return height;
}
}
