// Need G4P library
import g4p_controls.*;
// You can remove the PeasyCam import if you are not using
// the GViewPeasyCam control or the PeasyCam library.
//import peasy.*;
String pageOn = "start";
Transportation train; 
Transportation bus; 
Transportation car;
Transportation minivan; 
Transportation van;




public void setup(){
  size(1200, 900, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
    //train,bus, 5,7,11 seaters (transportation class) (vehicle, price per day, max pasengers allowed)
  train = new Transportation("train", 3.21 , 10);
  bus = new Transportation("bus", 3.21 , 10);
  car = new Transportation("car", 3.21 , 5);
  minivan = new Transportation("miny van",3.21 , 7);
  van = new Transportation("van", 3.21 , 11);
 
}

public void draw(){
  background(230);
  display();
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
