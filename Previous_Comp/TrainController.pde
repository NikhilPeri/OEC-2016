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
<<<<<<< HEAD
    }
      return (Train[])(trains.toArray());
  }  
=======
    }  
  return (Train[]) (trains.toArray());
}
>>>>>>> c2dde8733e7fced9a1c8d5c0dc7cf9226d7b39c6
}