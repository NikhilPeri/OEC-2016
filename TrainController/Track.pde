class Track{
  int startX; 
  int startY;
  int endX; 
  int endY;
  
  public Track(int startX, int startY, int endX, int endY){
   this.startX = startX;
   this.startY = startY;  
   this.endX = endX;
   this.endY = endY;
 }
 
 public boolean inLine(int xPos, int yPos) {
   // if AC is horizontal
   if (startX == xPos) return endX == xPos;
   // if AC is vertical.
   if (startY == yPos) return endY == yPos;
   // match the gradients
   return (startX - xPos)*(startY - yPos) == (xPos - endX)*(yPos - endY);
 }
 
}