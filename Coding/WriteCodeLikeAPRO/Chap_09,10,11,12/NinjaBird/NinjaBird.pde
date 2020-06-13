 //Two variables that keep track of current and best score
int currentScore = 0;
int bestScore = 0;

//Variables for the bird and two sets of pipes
Bird bird ;
Pipes pipes ;
Pipes pipes2 ;
//Method to set up the background
void setup ()
{
 //Create an 800-x-800-pixel canvas
 size (800,800);
 //Call the drawScene method
 drawScene();
 //Calls the constructors for the bird and two sets of pipes
 bird = new Bird ();
 pipes = new Pipes(500,-300,500,500 );
 pipes2 = new Pipes(0,-300,0,500 );
}

//Method to constantly draw the bird,pipes,
//and show and to show the buttons when it's time
void draw ()
{
  //Call the drawScene method
  drawScene();
  //Call the bird move method to re-draw the bird
  bird.move();
  //Call the pipes move method for both sets of pipes to re-draw the pipes
  pipes.move();
  pipes2.move();
  
   textSize(32); 
 fill(0,102,153,204);

//Keep checking to see if the bird should get another point
trackScore();
text(currentScore, bird.getX() + 60,bird.getY() - 5);

  //Conditional statement to check if the bird hits the pipes
  if(checkCollision())
  {
   if(currentScore > bestScore)  
   {
    bestScore = currentScore + 0;
    currentScore = 0;
   }
  }
  text("BEST:" + bestScore,400,50);
}
  
  //Method to check if the bird has sucessfully gone through a set of pipes
  void trackScore()
{  
int birdRightX = bird.getX() + bird.getWidth()/2;
int birdTopY = bird.getY() - bird.getHeight()/2;
int birdBottomY = bird.getY() + bird.getHeight()/2;  
  
if(pipes.checkIfPassed(birdRightX, birdTopY, birdBottomY)|| pipes2.checkIfPassed(birdRightX, birdTopY, birdBottomY))  
  {
  currentScore++;  }
} 
//Method to check to to seeif the bird has hit any of the pipes
boolean checkCollision()
{
int birdRightX = bird.getX() + bird.getWidth()/2;
int birdTopY = bird.getY() - bird.getHeight()/2;
int birdBottomY = bird.getY() + bird.getHeight()/2;
return pipes.checkIfHit(birdRightX, birdTopY, birdBottomY)|| pipes2.checkIfHit(birdRightX, birdTopY, birdBottomY);
/*if(pipes.checkIfHit(birdRightX, birdTopY, birdBottomY)|| pipes2.checkIfHit(birdRightX, birdTopY, birdBottomY))
{
  return true;
}
  return false;*/

}
//Call the mouseClicked button for the bird when the mouse is clicked
void mouseClicked ()
{
 bird.mouseClicked ();
}

//Method to draw the bacground color, grass, and city image
void drawScene()
{
//Turn the background of the canvas blue
background(173,216,230);
 //Create a green rectangle that spans across the bottom of the canvas
 stroke(0,255,0);
 fill(0,255,0);
 rect(0,700,1000,1000);
 
//Create a image that represents the city
PImage city = loadImage("cityscape.png");
image(city,0,260);
}
