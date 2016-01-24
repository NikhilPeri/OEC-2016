import java.awt.Point;

class Train implements Comparable<Train> {
  
  private static final String MOVING = "In Motion";
  private static final String IDLE = "Idling";
  private static final String OOS = "Out of Service";
  private static final String EMR = "Emergency Medical Response";
  private static final double MAX_SPEED = 88.0;
  private static final int LENGTH = 144;

  private int frontCoordinate;
  private int backCoordinate;
  private int id;
  private double speed;
  private String state;
  private double yellowZone;
  private double redZone;
  private double blueZone;
  private Track track;

  public Train() {
    this(0);
  }

  public Train(Track startingTrack) {
    this(0);
    track = startingTrack;
  }

  public Train(int frontCoordinate) {
    speed = 0;
    state = IDLE;
    updateFrontCoordinate(frontCoordinate);
    calculateZones();
  }

  public int getFrontCoordinate() {
    return frontCoordinate;
  }
  
  public Point getFrontPoint() {
    return convertCoordinateToPoint(frontCoordinate);
  }

  public void updateFrontCoordinate(int frontCoordinate) {
    this.frontCoordinate = frontCoordinate;
    backCoordinate = frontCoordinate + LENGTH;
  }
  
  public int getBackCoordinate() {
    return backCoordinate;
  }
  
  public Point getBackPoint() {
    return convertCoordinateToPoint(backCoordinate);
  }
  
  public void updateBackCoordinate(int backCoordinate) {
    this.backCoordinate = backCoordinate;
    frontCoordinate = backCoordinate - LENGTH;
  }

  public double getSpeed() {
    return speed;
  }

  public Track getCurrentTrack() {
    return track;
  }

  public void changeTrack(Track newTrack) {
    track = newTrack;
  }
  
  public int getID() {
    return id;
  }
  
  public void setID(int id) {
    this.id = id;
  }
  
  public Point getRedPoint() {
    return convertCoordinateToPoint(frontCoordinate + (int)(redZone));
  }
  
  public Point getYellowPoint() {
    return convertCoordinateToPoint(frontCoordinate + (int)(yellowZone));
  }
  
  public Point getBluePoint() {
    return convertCoordinateToPoint(backCoordinate - (int)(blueZone));
  }

  public void accelerate() {
    speed += 10; //Replace with actual number
    state = MOVING;
    if (speed > MAX_SPEED) {
      speed = MAX_SPEED;
    }
    calculateZones();
  }

  public void slowDown() {
    speed -= 10; //Replace with actual number
    if (speed < 0) {
      speed = 0;
      state = IDLE;
    }
    calculateZones();
  }

  public void activateBreak() {
    while (speed > 0) {
      slowDown();
    }
  }
  
  public void turnAround() {
    activateBreak();
    int temp = frontCoordinate;
    frontCoordinate = backCoordinate;
    backCoordinate = temp;
  }

  public void calculateZones() {
    if (speed == 0) {
      redZone = 50.0;
      yellowZone = 100.0;
    } else if (speed < 31) {
      redZone = 1.1 * speed + 50;
      yellowZone = 1.8 * speed + 100;
    } else if (speed < 51) {
      redZone = 1.25 * speed + 50;
      yellowZone = 2 * speed + 100;
    } else {
      redZone = 1.4 * speed + 50;
      yellowZone = 2.3 * speed + 100;
    }
      blueZone = speed == 0 ? 100 : -0.35 * speed + 100;
  }
  
  private Point convertCoordinateToPoint(int coordinate) {
    String direction = track.getFlow();
    if (direction.equalsIgnoreCase("east") || direction.equalsIgnoreCase("west"))
      return new Point((int) (track.start.getX()), coordinate);
    return new Point(coordinate, (int) (track.start.getY()));    
  }
  
  @Override
  public int compareTo(Train o) {
    return backCoordinate - o.getFrontCoordinate();
  }
}