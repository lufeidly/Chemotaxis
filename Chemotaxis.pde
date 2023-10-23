// void setup()   
// {     
//   int x, y, rgb;
//   size (500,500);
//   circles = new Bacteria [10];
//   for(int i = 0; i < circles.length; i++);
//   {
//   x = (int) (Math.random() * 100)+100;
//   y = (int) (Math.random() * 100)+100;
//   rgb = color(255,255,255);
//   circles[i] = new Bacteria(x, y, rgb);
//   }
// }   
// void draw()   
// {    
//   background[0];
//   ellipse (250, 250, 50, 50);
   
   
//   //move and show the bacteria   
// }  
// class Bacteria    
// {     
// int x,y,rgb;
// Bacteria (int Xvalue,int Yvalue,int c)
// {
//   x = Xvalue;
//   y = Yvalue;
//   rgb = c;
// }    
// }
// void move()
// {
// if(mouseX > x)
//  x = x + (int)(Math.random()*5)-1;
//  else
//  x = x + (int)(Math.random() *5)-3;
//  if(mouseY > y)
//  y = y + (int)(Math.random()*5)-1;
//  else
//  y = y + (int)(Math.random() *5)-3;
// }
// void show()
// {
// if(dist(x, y, 200, 200) < 50)
//  {
//  fill(3533, 12333, 34);
//  }
//  else
//  fill(rgb);
//  ellipse(x, y, 40, 40);
// }

Bacteria [] circles;
 void setup()   
 {     
circles = new int [10];
size (500, 500);
 }  
 
 void draw()   
 {    
   for(int i = 0; i < circles.length; i++)
   
   circles.move();
   circles.show();
 }  
 
 class Bacteria    
 {     
   int x, y, c;
   Bacteria (int myX,int myY,int myColor)
   {
     x = myX;
     y = myY;
     c = myColor;  
 }    
 
 void move()
 {
   if(mouseX > x)
   x = x + (int)(Math.random()*5)-3;
   //-3, -2, -1, 0, 1
   else
   x = x + (int)(Math.random()*5)-1;
   //-1, 0, 1, 2, 3
   if(mouseY > y)
   y = y + (int)(Math.random()*5)-3;
   //-3, -2, -1, 0, 1
   else
   y = y + (int)(Math.random()*5)-1;
   //-1, 0, 1, 2, 3
 }
 
 void show()
 {
   ellipse (x, y, 25, 25);
   c = color(255,255,255);
 }
