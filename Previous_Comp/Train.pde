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

  public void updateFrontCoordinate(int frontCoordinate) {
    this.frontCoordinate = frontCoordinate;
    backCoordinate = frontCoordinate + LENGTH;
  }
  
  public int getBackCoordinate() {
    return backCoordinate;
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

  public void accelerate() {
    speed += 10; //Replace with actual number
    if (speed > MAX_SPEED) {
      speed = MAX_SPEED;
    }
  }

  public void slowDown() {
    speed -= 10; //Replace with actual number
    if (speed < 0) {
      speed = 0;
    }
  }

  public void activateBreak() {
    while (speed > 0) {
      slowDown(); //Replace with actual number
    }
  }

  public void calculateZones() {
    if (speed == 0) {
      redZone = 50.0;
      yellowZone = 100.0;
      blueZone = 100.0;
    }
  }
  
  @Override
  public int compareTo(Train o) {
    return backCoordinate - o.getFrontCoordinate();
  }
}