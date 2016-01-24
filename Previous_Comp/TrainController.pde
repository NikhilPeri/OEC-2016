import java.util.ArrayList;

class TrainController {
  Track[] tracks;
  ArrayList<Train> trains;
  
  public TrainController(Track[] tracks){
    this.tracks = tracks;
    this.trains = new ArrayList<Train>();
  }
  
  public void addTrain(Train train, Track track){
   this.trains.add(train); 
   track.addTrain(train);
  }
  
  public Train[] updatePositions(){
    for(int i = 0;  i < trains.size(); i++){
      Train train = trains.get(i);
      for(int j = 0; j < trains.size(); j++){
       if(i != j){
         Train compTrain = trains.get(j);
         
         
       }
      }
    }
    return (Train[])(trains.toArray());
  }  
}  