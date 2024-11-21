import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
// Need G4P library
import g4p_controls.*;
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
int dislength;
String[] distanceData;
Flight airline1,airline2,airline3,airlineAtuse;
Traveler[] addingPass,addingTrav;
Trip tripbeingTaken;



public void setup(){
  size(1200, 700, JAVA2D);
  createGUI();
  customGUI();
  bg = loadImage(backgroundChoice[bgPicked]);
  //Initialized the fonts
  font1 = loadFont("Cambria-Bold-48.vlw");
  font2 = loadFont("MicrosoftPhagsPa-48.vlw");
  distanceData = loadStrings("Distances.txt");
  dislength = distanceData.length;

 
}

public void draw(){
  image(bg,0,0);
  display();  
    

   
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
