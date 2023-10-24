Bacteria [] circles;
void setup()   
 {     
    circles = new Bacteria [50];
    size (500, 500);
    for(int i = 0; i < circles.length;i++){
       circles[i] = new Bacteria ((int)(Math.random()*300),(int)(Math.random()*300));      // when calling the class, must meet all the parameters /criterias 
    }
 }  
 
 void draw()   
 {    
   background(0);
   for(int i = 0; i < circles.length; i++){
     circles[i].move();
     circles[i].show();
   }
 }  
 
 class Bacteria    
 {     
   int x, y, c;
   Bacteria (int myX,int myY)
   {
     x = myX;
     y = myY;
     c = (int)(Math.random()*255)-25;  
 }    
 
 void move()
 {
   if(mouseX < x)
   x = x + (int)(Math.random()*5)-3;
   //-3, -2, -1, 0, 1
   else
   x = x + (int)(Math.random()*5)-1;
   //-1, 0, 1, 2, 3
   if(mouseY < y)
   y = y + (int)(Math.random()*5)-3;
   //-3, -2, -1, 0, 1
   else
   y = y + (int)(Math.random()*5)-1;
   //-1, 0, 1, 2, 3
 }
 
 void show()
 {
   fill(c);
   ellipse (x, y, 30, 25);
  
 }
 }
