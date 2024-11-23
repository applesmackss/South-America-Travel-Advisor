import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
// Need G4P library
import g4p_controls.*;

// Images and visuals
PImage bg, logo;                        // Background image and logo
String[] backgroundChoice = {"bg1.png", "bg2.png", "bg3.png"}; // Random background options
int bgPicked = int(random(backgroundChoice.length));          // Randomly pick a background

// Navigation and page tracking
String pageOn = "start";                // Tracker for current page of the application
boolean pageStopper = true;             // Control page progression

// Fonts
PFont font1, font2;

// Trip and travel details
Transportation vehicleAtuse, van, car, minivan, train, bus; // Transportation options
String vehicleChosen, stateChosen, countryChosen, airlineChosen; // User choices for transportation, location, and airline

// Dates and trip details
String vStartYear = null, vStartMonth = null, vStartDay = null;   // Start date components
String vEndYear = null, vEndMonth = null, vEndDay = null;         // End date components
String startTripDate, endTripDate;                                // Full start and end trip dates as strings

// Itinerary
String itinerary1, itinerary2, itinerary3, itinerary4, itinerary5, itinerary6, itinerary7, itinerary8, itinerary9,
       itinerary10, itinerary11, itinerary12, itinerary13, itinerary14; // Strings for itinerary options
boolean itin1Picked, itin2Picked, itin3Picked, itin4Picked, 
        itin5Picked, itin6Picked, itin7Picked, itin8Picked, 
        itin9Picked, itin10Picked, itin11Picked, itin12Picked, 
        itin13Picked, itin14Picked = false; // Flags for itinerary selection

// Itinerary items
ItineraryItem item1, item2, item3, item4, item5, item6, item7, item8, 
              item9, item10, item11, item12, item13, item14; // Represents activities and their costs

// Travelers
int numOfTrav = 0, numOfTravUnder12 = 0, numOfTravUnder2 = 0; // Number of travelers by age group
Traveler[] addingPass, addingTrav;                           // Arrays to store traveler information

// Distance data
String[] distanceData;           // Array to store distances loaded from a file
int dislength;                   // Length of the distance data array

// Flight details
Flight airline1, airline2, airline3, airlineAtuse; // Flight options and selected airline

// Trip details
Trip tripbeingTaken;          // Represents the current trip being planned

// Itinerary cost
float totalItinCost;          // Total cost of the itinerary

// Date validation
boolean dateChecker;          // Flag for checking if entered dates are valid

public void setup() {
  size(1200, 700, JAVA2D);                     // Set window size
  createGUI();                                 // Create GUI elements

  logo = loadImage("SATA LOGO.png");           // Load the logo image
  bg = loadImage(backgroundChoice[bgPicked]);  // Load a random background

  // Initialize fonts
  font1 = loadFont("Cambria-Bold-48.vlw");     // Bold font for titles
  font2 = loadFont("MicrosoftPhagsPa-48.vlw"); // Font for other text

  // Load distance data from an external file
  distanceData = loadStrings("Distances.txt"); // Load distance data
  dislength = distanceData.length;             // Calculate the number of entries in the distance data
  
  //Create the classes for airlines
  airline1 = new Flight("Raspberry  Airlines",0.125);
  airline2 = new Flight("Gold Airlines",0.16);
  airline3 = new Flight("Diamond Airlines",0.2);
}

public void draw() {
  image(bg, 0, 0); // Draw the background image
  display();       // Call the display function
}
