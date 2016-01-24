import controlP5.*;

Track[] t1;
Train train1;
TrainController control;

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
  t1[3] = new Track(733, 690, 733, 10);
  t1[4] = new Track(310, 517, 1190, 517);
  t1[5] = new Track(1190, 537, 310, 537);
  
  control = new TrainController(t1);

  train1 = new Train(t[0]);
  
  control.addTrain(train1, t1[0]);
  
  cp5.addSlider("test")
     .setRange(100,400)
     .setValue(200)
     .setPosition(10,10)
     .setSize(100,19)
     ;
     
     cp5.addSlider("test2")
     .setRange(100,400)
     .setValue(200)
     .setPosition(10,40)
     .setSize(100,19)
     ;
     
}

void draw ()
{
  stroke(255);
  fill(#ED0202);
  rect(t1[0].getSX(), t1[0].getSY(), t1[0].getEX() - t1[0].getSX(), t1[0].getEY() - t1[0].getSY() + 10);
  rect(t1[1].getEX(), t1[1].getSY(), t1[1].getSX() - t1[1].getEX(), t1[1].getEY() - t1[1].getSY() + 10);
  rect(t1[2].getSX(), t1[2].getSY(), t1[2].getEX() - t1[2].getSX() + 10, t1[2].getEY() - t1[2].getSY());
  rect(t1[3].getSX(), t1[3].getEY(), t1[3].getEX() - t1[3].getSX() + 10, t1[3].getSY() - t1[3].getEY());
  rect(t1[4].getSX(), t1[4].getSY(), t1[4].getEX() - t1[4].getSX(), t1[4].getEY() - t1[4].getSY() + 10);
  rect(t1[5].getEX(), t1[5].getSY(), t1[5].getSX() - t1[5].getEX(), t1[5].getEY() - t1[5].getSY() + 10);
  
  stroke(0);
  line (300, 0, 300, 700);
}