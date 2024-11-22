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
String itinerary1,itinerary2,itinerary3,itinerary4,itinerary5,itinerary6,itinerary7,itinerary8,itinerary9,itinerary10,itinerary11,itinerary12,itinerary13,itinerary14;
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
boolean itin1Picked, itin2Picked, itin3Picked, itin4Picked, 
itin5Picked, itin6Picked, itin7Picked, itin8Picked, 
itin9Picked, itin10Picked, itin11Picked,itin12Picked, itin13Picked, itin14Picked = false;
ItineraryItem item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, item14;
float totalItinCost;


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
