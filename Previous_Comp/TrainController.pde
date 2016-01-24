import java.util.ArrayList;
import java.awt.Point;
import java.awt.geom.Line2D;


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
      
      Line2D blueLine = new Line2D.Double(train.getBackPoint(), train.getBluePoint());
      Line2D redLine = new Line2D.Double(train.getFrontPoint(), train.getRedPoint());
      Line2D yellowLine = new Line2D.Double(train.);
      Line2D trainLine = new Line2D.Double();
      
      for(int j = 0; j < trains.size(); j++){
       if(i != j){
         Train compTrain = trains.get(j);
         
         
       }
      }
    }
    return (Train[])(trains.toArray());
  }  
}  