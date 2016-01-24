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
  
  public ArrayList<Train> updatePositions(){
    for(int i = 0;  i < trains.size(); i++){
      Train train = trains.get(i);
      
      Line2D blueLine = new Line2D.Double(train.getBackPoint(), train.getBluePoint());
      Line2D redLine = new Line2D.Double(train.getFrontPoint(), train.getRedPoint());
      Line2D yellowLine = new Line2D.Double(train.getFrontPoint(), train.getYellowPoint());
      Line2D trainLine = new Line2D.Double(train.getFrontPoint(), train.getBackPoint());
      
      for(int j = 0; j < trains.size(); j++){
       if(i != j){
         Train compTrain = trains.get(j);
         
         Line2D compBlueLine = new Line2D.Double(compTrain.getBackPoint(), compTrain.getBluePoint());
         Line2D compRedLine = new Line2D.Double(compTrain.getFrontPoint(), compTrain.getRedPoint());
         Line2D compYellowLine = new Line2D.Double(compTrain.getFrontPoint(), compTrain.getYellowPoint());
         Line2D compTrainLine = new Line2D.Double(compTrain.getFrontPoint(), compTrain.getBackPoint());
         
         //collision detection logic
         if(yellowLine.intersectsLine(compBlueLine)||yellowLine.intersectsLine(compTrainLine)){
           train.slowDown();
         } else if(redLine.intersectsLine(compTrainLine)){
           train.activateBreak();
         } else {
           train.accelerate();
         }
       }
      }
    }
    return trains;
  }  
}  