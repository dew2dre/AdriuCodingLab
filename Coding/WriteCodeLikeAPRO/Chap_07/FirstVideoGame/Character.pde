class Character 
{
  PImage character;
  int characterX;
  int characterY;
  int health = 100;
  
//Character constructor
Character (int x,int y)
    {
      
      characterX = x;
      characterY = y;
      //Create the character
        character = loadImage("penguin.png");
      image(character,characterX,characterY);  
 
    } 
    int getX(){
      return characterX - (character.width/2);
    }
    int getY(){
      return characterY;
    }
    int getX2(){
    return characterX + (character.width/2);
    }
    int getY2(){
      return characterY + character.height;
    }
    int getHealth()
    {
    return health;
    }
    
  void updateHealth ()  
  {  
  health = health - 1;   
  } 
  
    void move()
  {
    
    if(characterY < 30)
    {
    characterY =characterY + 2;
    }
    
    //Re-draw the character
    image(character,characterX,characterY);
  
  //text(characterX,characterX + 60,characterY - 5);
  
  //Check to see if the character hit the lava
  if((characterX >= 150 && characterX <= 310) || (characterX >= 450 && characterX <= 610))
  {
  text("OW!", characterX + 60,characterY - 5);
  updateHealth();
  }
  }
  
  //Keypress method
  void keyPressed ()
{
  if(key == 'a')
  {
    characterX = characterX - 5;
  }
  else if(key == 'd')
  {
       characterX = characterX + 5;
  } else if(key == ' ')
  {
   characterY = characterY - 100;
  }
}

}
