import java.util.LinkedList;
import java.lang.Math;
import java.awt.Point;

class Track{
  public Point start; 
  public Point end;
  
  public int distance;
  
  public boolean isVertical = false;
  public boolean isHorizontal = false;
  
  public LinkedList<Train> trains;
  
  public Track(int startX, int startY, int endX, int endY){
   this.start = new Point(startX, startY);
   this.end = new Point(endX, endY);
   
   this.distance = (int)Math.sqrt((Math.pow(startX - endX, 2) + Math.pow(startY - endY, 2)));
   
   isVertical = (startX == endX);
   isHorizontal = (startY == endY);
   
   trains = new LinkedList<Train>();
 }
 
 public void addTrain(Train train){
   this.trains.add(train);
 }
 
 public void removeTrain(Train train){
  this.trains.remove(train); 
 }
 
 public String getFlow(){
  if(isVertical && !isHorizontal){
   if(start.getY() < end.getY()){
    return "SOUTH"; 
   } else {
    return "NORTH"; 
   }
  } else {
    if(start.getX() < end.getX()){
    return "EAST"; 
   } else {
    return "WEST"; 
   }
    
  }
 }
 
 public boolean inLine(int xPos, int yPos) {
   // if AC is horizontal
   if (start.getX() == xPos) return end.getX() == xPos;
   // if AC is vertical.
   if (start.getY() == yPos) return end.getY() == yPos;
   // match the gradients
   return (start.getX() - xPos)*(start.getY() - yPos) == (xPos - end.getX())*(yPos - end.getY());
 }
 
 public boolean atEnd(int xPos, int yPos){
  return ((xPos == start.getX())&&(yPos == start.getY()))
          ||((xPos == end.getX())&&(yPos == end.getY()));
 }
 
 public int getSX()
 {
   return (int)this.start.getX();
 }
 
 public int getSY()
 {
   return (int)this.start.getY();
 }
 
 public int getEX()
 {
   return (int)this.end.getX();
 }
 
 public int getEY()
 {
   return (int)this.end.getY();
 }
 
}