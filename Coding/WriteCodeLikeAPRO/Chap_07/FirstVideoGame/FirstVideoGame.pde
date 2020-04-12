Character character;

Enemy enemy1;
Enemy enemy2;

void setup ()
{
 // Canvas 
  size(1000,500);
  
  //Draw the sky,grass,and hills
  //drawScene();

//Create the character
character = new Character(0, 300); 

 // Create  the enemies
enemy1 = new Enemy(350,325);
enemy2 = new Enemy(650,325);

  //Draw the sky,grass,and hills
  drawScene();  
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
      
     // Character's health
     textSize(32);
     
     text(character.getHealth(),900,50);
}

void draw()
{


//Re-draw the character
character.move();

//Re-draw the enemy
enemy1.move(350, 450);
enemy2.move(650, 900);
if(enemy1.collideWith(character.getX(),character.getY(),character.getX2(),character.getY2())){
  character.updateHealth();  
}else if(enemy2.collideWith(character.getX(),character.getY(),character.getX2(),character.getY2())){
 character.updateHealth();
}
}

void keyPressed(){
  character.keyPressed();
}
