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
boolean collideWith (int x, int y ,int x2, int y2)
{ 
 if(enemyX >= x && enemyX <= x2 && enemyY >= y && enemyY <= y2){
   return true;
 }
return false;   
}  
}
