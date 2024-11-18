import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
// Need G4P library
import g4p_controls.*;
// You can remove the PeasyCam import if you are not using
// the GViewPeasyCam control or the PeasyCam library.
//import peasy.*;
PImage bg;
String pageOn = "start";
Transportation vehicleAtuse,van,car,minivan,train,bus;
String vehicleChosen;
boolean pageStopper = true;
String[] backgroundChoice = {"bg1.png","bg2.png","bg3.png"};
int bgPicked = int(random(backgroundChoice.length));



public void setup(){
  size(1200, 700, JAVA2D);
  createGUI();
  customGUI();
  bg = loadImage(backgroundChoice[bgPicked]);
  // Place your setup code here
  
//train,bus, 5,7,11 seaters (transportation class) (vehicle, price per day, max pasengers allowed)
    train = new Transportation("train", 4.00 , 10, 10, 10);  
  
    car = new Transportation("car", 50.00 , 5, 10, 10);

    bus = new Transportation("bus", 2.00 , 10, 10, 10);
  
    minivan = new Transportation("minivan", 70.00 , 7, 10, 10);
  
    van = new Transportation("van", 80.00 , 9, 10, 10);
 
}

public void draw(){
  image(bg,0,0);
  display();
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
