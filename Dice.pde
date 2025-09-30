int total = 0;
Coin bob;
void setup()
{
  size(540, 540);
  textAlign(CENTER,CENTER);
  noLoop();
  background(170,100,20);
}
void draw()
{
  for(int k = 50; k < 500; k += 55){
    for(int x = 50; x < 500; x += 55){
       bob = new Coin(x, k);
       bob.flip();
       bob.show();
    }
  }
  textSize(30);
  text(total,270,270);
  textSize(10);
}
void mousePressed()
{
  background(170,100,20);
  redraw();
  total = 0;
}
class Coin
{
  int num, myX, myY;

  Coin(int x, int y)
  {
    num = 1;
    myX = x;
    myY = y;
  }
  void flip()
  {
    num = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX-25, myY-25, 50, 50);
    fill(0);
    if (num == 1){
      total = total + 1;
      text("*",myX, myY);
    } else if (num == 2){
      total = total + 2;
      if (Math.random()<0.5){
      text("*          \n\n          *", myX, myY);
      } else {
      text("          *\n\n*          ", myX, myY);
      }
    } else if (num == 3){
      total = total + 3;
      if (Math.random()<0.5){
      text("*          \n*\n          *", myX, myY);
      } else {
      text("          *\n*\n*          ", myX, myY);
      }
    }else if (num == 4){
      total = total + 4;
      text("*         *\n\n*         *", myX, myY);
    }else if (num == 5){
      total = total + 5;
      text("*         *\n*\n*         *", myX, myY);
    }else {
      total = total + 6;
      if (Math.random()<0.5){
      text("*         *\n*         *\n*         *", myX, myY);
      } else {
      text("*    *    *\n\n*    *    *", myX, myY);
      }
    }
  }
}
