int PaddleX = 850;
int PaddleY = 100;
float PaddleY2 = height-150;
int PaddleX2 = 850;
float GoalX = 800;
/*
Float PongX
Float PongY
*/
float BallX= width;
float BallY= height;

float Yacc= 3;
float Xacc= 3;

void setup()
{
  fullScreen();
  
}


void draw()
{
  background(0);
  Shapes();
  Ball();
}

void Ball()
{
  fill(255, 255, 255);
  ellipse(BallX, BallY, 50, 50);
  BallX = BallX + Xacc;
  BallY = BallY + Yacc;
  
  if(BallX>width)
  {
    Xacc= random(-5,-3);
  }
  if(BallY>height)
  {
    Yacc= random(-5,-3);
  }
  if(BallX<0)
  {
    Xacc= random(3,5);
  }
  if(BallY<0)
  {
    Yacc= random(3,5);
  }
  
  if(BallY>PaddleY2)
  {
    if(PaddleX<BallX)
    {
      if(BallX<PaddleX+200)
      {
        if(BallY>PaddleY+20)
        {
          
}

void Shapes()
{ 
 
 rect(GoalX, height-50, 300, 20);
 rect(GoalX, 0, 300, 20);
 fill(random(255), random(255), random(255));
 rect(PaddleX2, PaddleY, 200, 20);
 rect(PaddleX, PaddleY2, 200, 20);
}

void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == RIGHT)
    {
      PaddleX = PaddleX+5;
    }
    if(keyCode == LEFT)
    {
      PaddleX = PaddleX-5;
    }
  }
  if(key == 'a')
  {
    PaddleX2 = PaddleX2-5;
  }
  if(key == 'd')
  {
    PaddleX2 = PaddleX2+5;
  }
}