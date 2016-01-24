int i;

void setup ()
{
  fullScreen();
  background(0);
  noStroke();
  fill(102);
}

void draw ()
{
  background(255);
  ellipse(i, height/2, 50, 50);
  i++;
}