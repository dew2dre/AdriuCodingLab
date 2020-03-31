void setup ()
{
 // Canvas and sky
  size(1000,500);
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
}
