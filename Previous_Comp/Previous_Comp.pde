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
  t1[0] = new Track(310, 100, 836, 100);
  t1[1] = new Track(836, 120, 310, 120);
  t1[2] = new Track(713, 10, 713, 690);
  t1[3] = new Track(733, 10, 733, 690);
  t1[4] = new Track(310, 517, 1190, 517);
  t1[5] = new Track(310, 537, 1190, 537);
  
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
  rect(t1[0].startX, t1[0].startY, t1[0].endX - t1[0].startX, t1[0].endY - t1[0].startY + 10);
  rect(t1[1].startX, t1[1].startY, t1[1].startX - t1[1].endX, t1[1].endY - t1[1].startY + 10);
  rect(t1[2].startX, t1[2].startY, t1[2].endX - t1[2].startX + 10, t1[2].endY - t1[2].startY);
  rect(t1[3].startX, t1[3].startY, t1[3].endX - t1[3].startX + 10, t1[3].endY - t1[3].startY);
  rect(t1[4].startX, t1[4].startY, t1[4].endX - t1[4].startX, t1[4].endY - t1[4].startY + 10);
  rect(t1[5].startX, t1[5].startY, t1[5].endX - t1[5].startX, t1[5].endY - t1[5].startY + 10);
  
  stroke(0);
  line (300, 0, 300, 700);
}