import controlP5.*;

Track[] t1;
ControlP5 cp5;

public int changeWidth;

void setup ()
{
  size(1200, 700);
  background(255);
  
  cp5 = new ControlP5(this);

  
  t1 = new Track[6];
  t1[0] = new Track(400, 100, 817, 110);
  t1[1] = new Track(400, 120, 817, 130);
  t1[2] = new Track(713, 40, 10, 556);
  t1[3] = new Track(733, 40, 10, 556);
  t1[4] = new Track(400, 517, 556, 10);
  t1[5] = new Track(400, 537, 556, 10);
  
  cp5.addSlider("test")
     .setRange(100,400)
     .setValue(200)
     .setPosition(100,20)
     .setSize(100,19)
     ;
     
}

void draw ()
{
  
  
  stroke(255);
  fill(#ED0202);
  rect(t1[0].startX, t1[0].startY, t1[0].endX - t1[0].startX, t1[0].endY - t1[0].startY);
  rect(t1[1].startX, t1[1].startY, t1[1].endX - t1[1].startX, t1[1].endY - t1[1].startY);
  rect(t1[2].startX, t1[2].startY, t1[2].endX, t1[2].endY);
  rect(t1[3].startX, t1[3].startY, t1[3].endX, t1[3].endY);
  rect(t1[4].startX, t1[4].startY, t1[4].endX, t1[4].endY);
  rect(t1[5].startX, t1[5].startY, t1[5].endX, t1[5].endY);
  
  stroke(0);
  line (300, 0, 300, 700);
}