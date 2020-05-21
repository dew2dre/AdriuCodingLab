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
    
    boolean birdWithinPipes(int x)
    {
    //Determine if the bird is within the pipes horizontally
    boolean birdPastPipesBeg = x >= xCoordinateTop;
    boolean birdBeforePipesEnd = x <= (xCoordinateTop + widthTop);
    boolean birdWithinPipes = birdPastPipesBeg && birdBeforePipesEnd;
    
    return birdWithinPipes;
    
    }
    
    boolean birdWithinGap (int topY, int bottomY)
    {
    //Determine if the bird is within the pipes vertically
    boolean birdBelowTopPipes = topY > (yCoordinateTop + heightTop);
    boolean birdAboveBottomPipes = bottomY < xCoordinateTop;
    boolean WithinGap =birdBelowTopPipes  && birdAboveBottomPipes;
    
    return WithinGap;
    }
    
    boolean checkIfHit(int x, int topY, int bottomY)
    {
    //Conditional statement to check if the bird is in the same location as the pipes
   /* if(birdWithinPipes(x) && !birdWithinGap(topY, bottomY ))
    {
    return true;
    }else{
    return false;
    }*/
    return birdWithinPipes(x) && !birdWithinGap(topY, bottomY );
    }
    boolean birdPasedPipes(int x)
    {
    boolean birdAtPipesEndLeft = x >= ((xCoordinateTop + widthTop) - 2);
    boolean birdAtPipesEndRight = x <= ((xCoordinateTop + widthTop) + 2);
    /*if(birdAtPipesEndLeft && birdAtPipesEndRight)
    {
    return true;
    }else{
    return false;
    }*/
     return (birdAtPipesEndLeft && birdAtPipesEndRight);
    }
    boolean checkIfPassed(int x, int topY, int bottomY)
    {
    //Conditional statement to check if the bird is in the same location as the pipes
    /*if(birdWithinPipes(x) && !birdWithinGap(topY, bottomY ))
    {
    return true;
    }else{
    return false;
    }*/
     return birdWithinPipes(x) && !birdWithinGap(topY, bottomY );
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
