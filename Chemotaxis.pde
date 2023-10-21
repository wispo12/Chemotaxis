 class Food{
  int myX;
  int myY;
  Food()
  {
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
  }
  void show()
  {
     fill(0,250,0);
      ellipse(myX,myY,15,15);
  }
}
class Walker
{
  float myX, myY;
  Walker()
  {
    myX = myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7) - 3;
    myY = myY + (int)(Math.random()*7) - 3;
  }
  void show()
  {
    //int num=(int)(Math.random()*2);
    //if (num==0)
    //{
      fill(0,0,250);
      ellipse(myX,myY,30,30);
  //  }
  //  else
  //  {
  //    fill(250,0,0);
  //  ellipse(myX,myY,30,30);
  //   }
  //}
}
void moveTowards()
{
  for (int i=0;i<conn.length;i++){
    for (int p=0;p<food.length;p++){
       float Distance= (dist(food[p].myX,food[p].myY,conn[i].myX,conn[i].myY)/5);
 //myX=myX+(dist(food[p].myX,food[p].myY,conn[i].myX,conn[i].myY))/((int)(Math.random()*30)));
 // myY=myY+((dist(food[p].myX,food[p].myY,conn[i].myX,conn[i].myY))/((int)(Math.random()*30)));

fill(0,250,0);
 ellipse(myX,myY,30,30);
      }
    }
  }
}

Food[] food;
Walker [] conn;
void setup()
{
  size(500,500);
food=new Food[500];
 for(int i = 0; i < food.length; i++)
  {
    food[i] = new Food();
  }  
  conn = new Walker[10];
  for(int i = 0; i < conn.length; i++)
  {
    conn[i] = new Walker();
  }  
}

void draw()
{
  background(0);
  for (int i = 0; i < conn.length; i++)
  {
    conn[i].show();
    conn[i].walk();
    for (int p=0;p<conn.length;p++)
    {
      food[p].show();
      if(dist(food[p].myX,food[p].myY,conn[i].myX,conn[i].myY)<50)
      {
       conn[i].moveTowards();
      }
    }
  }
   
}


