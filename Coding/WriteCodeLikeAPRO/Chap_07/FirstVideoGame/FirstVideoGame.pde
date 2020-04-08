Character character;

Enemy enemy1;
Enemy enemy2;

void setup ()
{
 // Canvas 
  size(1000,500);
  
  //Draw the sky,grass,and hills
  drawScene();

//Create the character


 // Create  the enemies
enemy1 = new Enemy(350,325);
enemy2 = new Enemy(650,325);
}
  
  void drawScene()
  {
    //Sky
      background(173,216,230);
    
  //Grass
 stroke(0,255,0);    
 fill(0,255,0);
  rect(0,400,1000,500);
  
  //Lava Pits
 stroke(255,0,0);    
  fill(255,0,0);
  arc(300,400,100,150,0,PI);
  arc(600,400,100,150,0,PI);
 
}

void draw()
{
  //Re-draw the sky,grass,and hills
  drawScene();  
  
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
}
//Re-draw the enemy
enemy1.move(350, 450);
enemy2.move(650, 900);
}

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

class Enemy
{
PImage enemy;
int enemyX = 350;
int enemyY = 325;

int enemyMovement = 1;

  Enemy(int x,int y)
  {
    enemyX = x;
    enemyY = y;
    enemy = loadImage("crab.png");
    image(enemy,enemyX,enemyY);
  }
void move (int leftX,int rightX){
  //Re-draw the enemy
  image(enemy,enemyX,enemyY); 
    //Move enemy
    if(enemyX == leftX)
    {
      enemyMovement = 1;
    }
    else if(enemyX == rightX)
    {
      enemyMovement = -1;
    }
  enemyX = enemyY + enemyMovement;
  }
}

class Character
{
  PImage character;
int characterX = 0;
int characterY = 300;

Character (int x,int y
{
  characterX = x;
  characterY = y;
  //Create the character
    character = loadImage("penguin.png");
  image(character,characterX,characterY);
  
}
}
