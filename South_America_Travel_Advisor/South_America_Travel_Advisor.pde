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
String vehicleChosen,stateChosen,countryChosen,airlineChosen;
String vStartYear = null,vStartMonth = null,vStartDay = null,vEndYear = null,vEndMonth = null,vEndDay = null;
String startTripDate,endTripDate;
boolean pageStopper = true;
String[] backgroundChoice = {"bg1.png","bg2.png","bg3.png"};
int numOfTrav = 0, numOfTravUnder12 = 0,numOfTravUnder2 = 0;
int bgPicked = int(random(backgroundChoice.length));
PFont font1, font2;
Trip tripbeingTaken;



public void setup(){
  size(1200, 700, JAVA2D);
  createGUI();
  customGUI();
  bg = loadImage(backgroundChoice[bgPicked]);
  
  //Initialized the fonts
  font1 = loadFont("Cambria-Bold-48.vlw");
  font2 = loadFont("MicrosoftPhagsPa-48.vlw");

 
}

public void draw(){
  image(bg,0,0);
  display();
    
    
  // This will change constantly if the user wants to update something, so this is why its in draw
  if (stateChosen != null && countryChosen != null && startTripDate != null && endTripDate != null) {
    tripbeingTaken = new Trip(stateChosen,countryChosen,startTripDate,endTripDate);
    
    //train,bus, 5,7,11 seaters (transportation class) (vehicle, price per day, max pasengers allowed) (are constantly changing)
    train = new Transportation("train", 4.00 , 10, tripbeingTaken.travelDays, numOfTrav);  
    
    car = new Transportation("car", 50.00 , 5, tripbeingTaken.travelDays, numOfTrav);
  
    bus = new Transportation("bus", 2.00 , 10, tripbeingTaken.travelDays, numOfTrav);
    
    minivan = new Transportation("minivan", 70.00 , 7, tripbeingTaken.travelDays, numOfTrav);
    
    van = new Transportation("van", 80.00 , 11, tripbeingTaken.travelDays, numOfTrav);
  }
  

  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
