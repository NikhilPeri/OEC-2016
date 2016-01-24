class Train {
 private int coordinate;
 private double speed;
 private double yellowZone;
 private double redZone;
 private double blueZone;
 private Track track;
 
 private static final double MAX_SPEED = 88.0;
 
 public Train() {
   this(0);
 }
 
 public Train(int coordinate) {
   this(coordinate, null);
 }
 
 public Train(int coordinate, Track startingTrack) {
    track = startingTrack;
   speed = 0;
   this.coordinate = coordinate;
   calculateZones();    
 }
 
 public int getCoordinate() {
   return coordinate;
 }

 public void updateCoordinate(int coordinate) {
   this.coordinate = coordinate;
 }
 
 public double getSpeed() {
   return speed;
 }
 
 public Track getCurrentTrack() {
   return track;
 }
 
 public void setTrack(Track newTrack) {
   track = newTrack;
 }
 
 public void slowDown() {
   speed -= 10; //Replace with actual number
 }
 
 public void activateBreak() {
   speed -=50; //Replace with actual number
 }
 
 public void calculateZones() {
   if (speed == 0) {
     redZone = 50.0;
     yellowZone = 100.0;
     blueZone = 100.0;
   }
 }
}