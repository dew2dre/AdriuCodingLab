PImage character;
int characterX = 0;
int characterY = 300;

void setup ()
{
 // Canvas 
  size(1000,500);
  
  //Draw the sky,grass,and hills
  drawScene();
  
  //Create the character
    character = loadImage("penguin.png");
  image(character,characterX,characterY);
}
  
  void drawScene()
  {
    //Sky
      background(173,216,230);
    
  //Grass
 stroke(0,255,0);    
 fill(0,255,0);
  rect(0,400,1000,500);
  
  //Hill
 stroke(165,42,42);    
  fill(165,42,42);
  arc(300,400,100,150,PI,TWO_PI);
  arc(600,400,100,150,PI,TWO_PI);
 
  character = loadImage("penguin.png");
  image(character,0,300);
}

void draw()
{
  //Re-draw the sky,grass,and hills
  drawScene();  
  
  //Re-draw the character
  image(character,characterX,characterY);

}

void keyPressed ()
{
  if(key == 'a')
  {
    characterX = characterX - 10;
  }
  else if(key == 'd')
  {
       characterX = characterX + 10;
  }
  
  
}
