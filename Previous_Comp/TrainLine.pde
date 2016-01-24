class TrainLine{
  //stores a bidirectional pair
  Track trackA;
  Track trackB; 
  
  public TrainLine(Track trackA, Track trackB){
    trackA = trackA;
    trackB = trackB;
  }
  
  public Track getTrackA(){
   return trackA;
  }
  
  public Track getTrackB(){
    return trackB;
  }
  
  public void update(){
    updateTrack(trackA);
    updateTrack(trackB);
  }
  
  private void updateTrack(Track track){
    for(Train train : track.trains){
      if((train.getFrontCoordinate() == 0)||(train.getFrontCoordinate() == track.distance)){
        swapTracks(track, train);
      }
    }
  }
  
  private void swapTracks(Track initialTrack, Train train){
    if(initialTrack == trackA){
     trackB.addTrain(train);
     train.changeTrack(trackB);
     train.turnAround();
     trackA.removeTrain(train);
    } else {
      trackA.addTrain(train);
      train.changeTrack(trackA);
      train.turnAround();
      trackB.removeTrain(train);
    }
  }
}