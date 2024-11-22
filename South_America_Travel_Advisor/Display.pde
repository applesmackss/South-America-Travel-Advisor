void display() {
  color backcol = color(255,255,255);
  PVector bookCoord = new PVector(50,25);
  PVector bookShape = new PVector(1100,600);

  if(pageOn == "start") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    Airlines.setVisible(false);
    StartYear.setVisible(false);
    StartMonth.setVisible(false);
    StartDay.setVisible(false);
    EndYear.setVisible(false);
    EndMonth.setVisible(false);
    EndDay.setVisible(false);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(true);  
    About.setVisible(true);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(false);
    Finish.setVisible(false);
    fill(255,255,255,128);
    stroke(255,255,255,128);
    rect(100,250,1000,150);
    Start();
  }
  
  if(pageOn == "about") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    Airlines.setVisible(false);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(true);
    Next.setVisible(false);
    Previous.setVisible(false);
    Finish.setVisible(false);
    fill(backcol);
    rect(300,25,600,650);
    image(logo,510,455);
    About();
    
    
  }
  
  if(pageOn == "info1") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    Airlines.setVisible(false);
    StartYear.setVisible(true);
    StartMonth.setVisible(true);
    StartDay.setVisible(true);
    EndYear.setVisible(true);
    EndMonth.setVisible(true);
    EndDay.setVisible(true);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(true);
    EndingLocation.setVisible(true);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    
    if(startTripDate != null && endTripDate != null && stateChosen != null && countryChosen != null) {
      tripbeingTaken = new Trip(stateChosen,countryChosen,startTripDate,endTripDate);
      if(tripbeingTaken.travelDays <= 14 && tripbeingTaken.travelDays >= 1) {
        Next.setVisible(true);
      }
      
      else {
        fill(255,0,0);
        Next.setVisible(false);
        if(tripbeingTaken.travelDays > 14){
          if(dateChecker == true) {
            text("We unfortunately do not provide services if your vacation is above 2 weeks.",250,600);
          }
        }
        
        if(tripbeingTaken.travelDays < 1) {
          if(dateChecker == true) {
            text("We are not time travelers, we can not go to the past sorry for the incovenience.",250,600);
          }
        }
      }
    }
    
    else {
      Next.setVisible(false);
    }
    
    Info1();    
  }
  if(pageOn == "info2") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    Airlines.setVisible(false);
    StartYear.setVisible(false);
    StartMonth.setVisible(false);
    StartDay.setVisible(false);
    EndYear.setVisible(false);
    EndMonth.setVisible(false);
    EndDay.setVisible(false);
    NumOfTravelers.setVisible(true);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    
    if(numOfTrav != 0 && numOfTrav > (numOfTravUnder12+numOfTravUnder2)) {
      Next.setVisible(true);
    }
    else {
      Next.setVisible(false);
    }
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info2();
  }
  
  if(pageOn == "info3") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    
    airline1 = new Flight("Flying Sheep",0.125);
    airline2 = new Flight("Normalize AVG",0.16);
    airline3 = new Flight("Luxarice",0.2);
    
    addingTrav = new Traveler[numOfTrav];
    
    for(int i = 0; i < numOfTrav;i++) {
     
      if(i < numOfTravUnder12) {
        addingTrav[i] = new Traveler(12);
      }
      
      else if(i < (numOfTravUnder2+numOfTravUnder12)) {
        addingTrav[i] = new Traveler(1);
      }
      
      else {
        addingTrav[i] = new Traveler(18);
      }
    }
    if (airlineAtuse!= null){
      airlineAtuse.passengers.clear();
      tripbeingTaken.travelers.clear();
    }
    for(int g = 0; g < numOfTrav; g++) {
      int maxSize = numOfTrav;
      if (tripbeingTaken.travelers.size() < maxSize) {
        tripbeingTaken.addTraveler(addingTrav[g]);
      }
      
      if(airlineAtuse != null) {
        if (airlineAtuse.passengers.size() < maxSize) {  
        airlineAtuse.addPassenger(addingTrav[g]);
        }
      }
    }
    
    if (airlineAtuse != null) {
    for (int i = 0; i < numOfTrav; i++) {
      float fDistance = airlineAtuse.getDistance();
      float fRPK = airlineAtuse.ratePerKm;
      addingTrav[i].calculateTicketCost(fDistance, fRPK);
      
    }
    println(airlineAtuse.calculateTotalTicketsCost());

    
    }
    
    
    
    
    Airlines.setVisible(true);
    StartYear.setVisible(false);
    StartMonth.setVisible(false);
    StartDay.setVisible(false);
    EndYear.setVisible(false);
    EndMonth.setVisible(false);
    EndDay.setVisible(false);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    
    if(airlineChosen != null) {
      Next.setVisible(true);
    }
    
    else {
      Next.setVisible(false);
    }
    
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info3();
  }
  
  if(pageOn == "info4") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    Airlines.setVisible(false);
    StartYear.setVisible(false);
    StartMonth.setVisible(false);
    StartDay.setVisible(false);
    EndYear.setVisible(false);
    EndMonth.setVisible(false);
    EndDay.setVisible(false);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(true);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    
    //train,bus, 5,7,11 seaters (transportation class) (vehicle, price per day, max pasengers allowed) (are constantly changing)
    train = new Transportation("train", 4.00 , 10, tripbeingTaken.travelDays, numOfTrav);     
    car = new Transportation("car", 50.00 , 5, tripbeingTaken.travelDays, numOfTrav); 
    bus = new Transportation("bus", 2.00 , 10, tripbeingTaken.travelDays, numOfTrav);    
    minivan = new Transportation("minivan", 70.00 , 7, tripbeingTaken.travelDays, numOfTrav);    
    van = new Transportation("van", 80.00 , 11, tripbeingTaken.travelDays, numOfTrav);
    
    if (vehicleAtuse != null && vehicleAtuse.maximumCapacity >= numOfTrav) {
      Next.setVisible(true);
    }
    
    else {
      Next.setVisible(false);
    }
    
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info4();
  }
  
  if(pageOn == "info5") {

    if(1 <= tripbeingTaken.travelDays){
      Itinerary1.setVisible(true);
    }
    else {
      Itinerary1.setVisible(false);
    }
    
    if(2 <= tripbeingTaken.travelDays){
      Itinerary2.setVisible(true);
    }
    else {
      Itinerary2.setVisible(false);
    }
    
    if(3 <= tripbeingTaken.travelDays){
      Itinerary3.setVisible(true);
    }
    else {
      Itinerary3.setVisible(false);
    }
    
    if(4 <= tripbeingTaken.travelDays){
      Itinerary4.setVisible(true);
    }
    else {
      Itinerary4.setVisible(false);
    }
    
    if(5 <= tripbeingTaken.travelDays){
      Itinerary5.setVisible(true);
    }
    else {
      Itinerary5.setVisible(false);
    }
    
    if(6 <= tripbeingTaken.travelDays){
      Itinerary6.setVisible(true);
    }
    else {
      Itinerary6.setVisible(false);
    }
    
    if(7 <= tripbeingTaken.travelDays){
      Itinerary7.setVisible(true);
    }
    else {
      Itinerary7.setVisible(false);
    }
    
    if(8 <= tripbeingTaken.travelDays){
      Itinerary8.setVisible(true);
    }
    else {
      Itinerary8.setVisible(false);
    }
    
    if(9 <= tripbeingTaken.travelDays){
      Itinerary9.setVisible(true);
    }
    else {
      Itinerary9.setVisible(false);
    }
    
    if(10 <= tripbeingTaken.travelDays){
      Itinerary10.setVisible(true);
    }
    else {
      Itinerary10.setVisible(false);
    }
    
    if(11 <= tripbeingTaken.travelDays){
      Itinerary11.setVisible(true);
    }
    else {
      Itinerary11.setVisible(false);
    }
    
    if(12 <= tripbeingTaken.travelDays){
      Itinerary12.setVisible(true);
    }
    else {
      Itinerary12.setVisible(false);
    }
    
    if(13 <= tripbeingTaken.travelDays){
      Itinerary13.setVisible(true);
    }
    else {
      Itinerary13.setVisible(false);
    }
    
    if(14 <= tripbeingTaken.travelDays){
      Itinerary14.setVisible(true);
    }
    else {
      Itinerary14.setVisible(false);
    }
    
    Airlines.setVisible(false);
    StartYear.setVisible(false);
    StartMonth.setVisible(false);
    StartDay.setVisible(false);
    EndYear.setVisible(false);
    EndMonth.setVisible(false);
    EndDay.setVisible(false);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(true);
    
    if(tripbeingTaken.travelDays == 1) {
      if(itinerary1 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 2) {
      if(itinerary1 != null && itinerary2 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }    
 
    if(tripbeingTaken.travelDays == 3) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 4) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 5) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    } 
    
    if(tripbeingTaken.travelDays == 6) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null ) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 7) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 8) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null && itinerary8 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 9) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null 
      && itinerary8 != null && itinerary9 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 10) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null 
      && itinerary8 != null && itinerary9 != null && itinerary10 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 11) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null 
      && itinerary8 != null && itinerary9 != null && itinerary10 != null && itinerary11 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 12) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null 
      && itinerary8 != null && itinerary9 != null && itinerary10 != null && itinerary11 != null && itinerary12 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 13) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null 
      && itinerary8 != null && itinerary9 != null && itinerary10 != null && itinerary11 != null && itinerary12 != null && itinerary13 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    if(tripbeingTaken.travelDays == 14) {
      if(itinerary1 != null && itinerary2 != null && itinerary3 != null && itinerary4 != null && itinerary5 != null && itinerary6 != null && itinerary7 != null 
      && itinerary8 != null && itinerary9 != null && itinerary10 != null && itinerary11 != null && itinerary12 != null && itinerary13 != null && itinerary14 != null) {
        Finish.setVisible(true);
      }
      
      else {
        Finish.setVisible(false);
      }
    }
    
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info5();
  }
  
  if(pageOn == "final") {
    Itinerary1.setVisible(false);
    Itinerary2.setVisible(false);
    Itinerary3.setVisible(false);
    Itinerary4.setVisible(false);
    Itinerary5.setVisible(false);
    Itinerary6.setVisible(false);
    Itinerary7.setVisible(false);
    Itinerary8.setVisible(false);
    Itinerary9.setVisible(false);
    Itinerary10.setVisible(false);
    Itinerary11.setVisible(false);
    Itinerary12.setVisible(false);
    Itinerary13.setVisible(false);
    Itinerary14.setVisible(false);
    Airlines.setVisible(false);
    StartYear.setVisible(false);
    StartMonth.setVisible(false);
    StartDay.setVisible(false);
    EndYear.setVisible(false);
    EndMonth.setVisible(false);
    EndDay.setVisible(false);
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Final();
    tripbeingTaken.displaySummary();
  }


}

void Start() {
   textFont(font1);
   textSize(65);
   fill(0);
   text("South America Travel Advisor",140,height/2);

}


void About() {
  textFont(font1);
  textSize(60);
  fill(0);
  text("About Us", 475, 100);
  textSize(22);
  fill(0);
  text("Thank you for choosing South America Travel Advisor!", 315,175);
  textFont(font2);
  textSize(14.5);
  fill(0);
    
  //First Block of Text
  text("South America Travel Advisor (SATA) is the perfect travel planner for U.S. citizens who ", 320, 200);
  text("want to explore the diverse landscapes of South America. Whether you plan on visiting ", 320, 220);
  text("the Igauzu Falls, Ibirapuera Park, or the 'Christ the Reedemer' landmark, we got it covered!", 320, 240);
    
  //Second Bloxk of Text
  textFont(font1);
  textSize(30);
  fill(0);
  text("What we offer:", 490,325);
  textFont(font2);
  textSize(14.5);
  text("We offer an experience that makes your trip planning easier and less stressful. We can list ", 320, 350);
  text("multiple activities designed to fit your preferences. We find the best plane tickets for you ", 320, 370);
  text("with a focus on affordability, comfort, or convinience to your preference. Thinking about ", 320, 390);
  text("how you plan on travelling across the country? We'll find you the best transportation ", 320, 410);
  text("method for you, and we'll show you the pricing of each option too, so that you can ", 320, 430);
  text("adjust them accordingly to your budget.",475,450);

  textSize(12);
  text("To start planning for your trip, exit out this page by pressing the 'x' mark on the top right and then press the ", 310, 650);
  text("'start planning' button on the main page", 490, 665);


}


void Info1() {
  fill(0);
  textSize(35);
  textFont(font1);
  text("Starting Location",100,200);
  text("Ending Location",700,200);
  text("Start Date",100,400);
  text("End Date",700,400);
  
  textSize(20);
  
  //Start dates labels
  text("Year:",100,435);
  text("Month:",220,435);
  text("Day:",340,435);
  
  //End dates labels
  text("Year:",700,435);
  text("Month:",820,435);
  text("Day:",940,435);
  
}

void Info2() {
  fill(0);
  textFont(font1);
  textSize(40);
  text("Number of Travelers?",100,100);
  if(numOfTrav > 1) {
    textSize(40);
    text("How many travelers are between 2 and 12 years old?",100,250);
  TravLess12.setVisible(true);
  
  if(numOfTravUnder12 == numOfTrav) {
    fill(255,0,0);
    textSize(20);
    text("Invalid Entry: At least one adult is required for the flight.",370,310);  
  }  
    
  if(numOfTravUnder12 > numOfTrav) {
    fill(255,0,0);
    textSize(18);
    text("Invalid Entry: number of passengers should be greater than the number of children", 370, 310);
  }
  
  if(numOfTravUnder2 > numOfTrav) {
    fill(255,0,0);
    textSize(18);
    text("Invalid Entry: number of passengers should be greater than the number of toddlers.",370,460);  
    
  }
  
  if(numOfTravUnder2 == numOfTrav) {
    fill(255,0,0);
    textSize(20);
    text("Invalid Entry: At least one adult is required for the flight.", 370, 460);
  
  }
  
  if((numOfTravUnder2 + numOfTravUnder12) == numOfTrav) {
    fill(255,0,0);
    textSize(35);
    text("Invalid Entry: At least one adult is required for the flight.", 125, 600);
  }
  
  if((numOfTravUnder2 + numOfTravUnder12) > numOfTrav) {
    fill(255,0,0);
    textSize(25);
    text("Invalid Entry: number of passengers should be greater than the number of children.", 100, 600);
   
  }
  
  fill(0);
  textFont(font1);
  textSize(40);
  text("How many travelers are under the age of 2?",100,400);
  TravUnder2.setVisible(true);
  }
  
  else {
   TravUnder2.setVisible(false);
   TravLess12.setVisible(false);
  }




}

void Info3() {
  fill(0);
  textSize(35);
  textFont(font1);
  text("What airline do you prefer?",100,100);
  text(stateChosen+" to "+countryChosen+":",100,400);
  if (airlineAtuse != null) {
    text("Distance: " + airlineAtuse.getDistance() + " km", 100, 500);
    airlineAtuse.displayFlightSummary();
    
    //Table to calculate cost
    line(600,200,600,550);
    fill(0);
    rect(700, 200, 5, 350);
    rect(660,450,400,5);
    textFont(font1);
    textSize(20);
    text("Total",635,485);
    textSize(25);
    text("Total Round Trip Cost: $" + (airlineAtuse.findRoundTripCost()), 715, 575);
    
    int ptx = 715;
    int pty = 260;
    for(int i = 0; i < numOfTrav; i++) {  

      if(addingTrav[i].age < 13 && addingTrav[i].age > 2) {    
        fill(255,0,0);
        textSize(20);
        text("Discount: 20%", 1000, pty);
        
      }
        
      if(addingTrav[i].age < 2) {    

        fill(255,0,0);
        textSize(20);
        text("Discount: 100%", 990, pty);
      }
      
      fill(0);
      if((i+1) == 10) {
        text("Passenger #"+(i+1)+"        " + "$"+nf(addingTrav[i].ticketCost,0,2), ptx,pty);
      }
      
      else {
        text("Passenger #"+(i+1)+"          " + "$"+nf(addingTrav[i].ticketCost,0,2), ptx,pty);   
      }
      
      pty += 20;
    }
    text("$"+airlineAtuse.calculateTotalTicketsCost(),715,485);
      
    }
}


void Info4() {
  rect(100,225,500,375);
  fill(0);
  textSize(20);
  text("Transporation Type",100,150);
  textFont(font1);
  textSize(35);
  text("What kind of transporation would you like in this country?",100,100);
  text("Summary: ",275,270);
  text("Cost of Method Chosen",700,200);
  fill(255);
  if(vehicleAtuse != null) {
  vehicleAtuse.displayTransportationDetails();
  vehicleAtuse.displayTransportationSummary();
  }
  
}

void Info5() {
  textFont(font1);
  textSize(20);
  fill(0);
  text("Choose your itineary for the next "+tripbeingTaken.travelDays+" days",375,50);
  int x = 100;
  int y = 100;
  for(int i = 0; i < tripbeingTaken.travelDays; i++) {
    textFont(font1);
    textSize(20);
    fill(0);
    text("Day "+(i+1)+" Plan:",x,y);
    
    if(i % 2 != 0) {
      x = 100;
      y += 70;
    
    }
    
    if(i % 2 == 0) {
      x += 550;    
    }  
  }
  
  totalItinCost = 0;
  String activity1 = itinerary1;
  if (itin1Picked == true) {
    int $index1 = activity1.indexOf("$");
    String price1 = activity1.substring($index1 + 1, activity1.length());
    float fprice1 = float(price1);
    println(fprice1);
    item1 = new ItineraryItem(activity1, fprice1);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item1.itemCostForWholeParty(), 350, 127.5);
    totalItinCost += float(item1.itemCostForWholeParty());
  }
  
  
  String activity2 = itinerary2;
  if (itin2Picked == true) {
    int $index2 = activity2.indexOf("$");
    String price2 = activity2.substring($index2 + 1, activity2.length());
    float fprice2 = float(price2);
    item2 = new ItineraryItem(activity2, fprice2);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item2.itemCostForWholeParty(), 900, 127.5);
    totalItinCost += float(item2.itemCostForWholeParty());

  }
  
  String activity3 = itinerary3;
  if (itin3Picked == true) {
    int $index3 = activity3.indexOf("$");
    String price3 = activity3.substring($index3 + 1, activity3.length());
    float fprice3 = float(price3);
    item3 = new ItineraryItem(activity3, fprice3);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item3.itemCostForWholeParty(), 350, 197.5);
    totalItinCost += float(item3.itemCostForWholeParty());

  }

  
  String activity4 = itinerary4;
  if (itin4Picked == true) {
    int $index4 = activity4.indexOf("$");
    String price4 = activity4.substring($index4 + 1, activity4.length());
    float fprice4 = float(price4);
    item4 = new ItineraryItem(activity4, fprice4);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item4.itemCostForWholeParty(), 900, 197.5);
    totalItinCost += float(item4.itemCostForWholeParty());

  }
  
  String activity5 = itinerary5;
  if (itin5Picked == true) {
    int $index5 = activity5.indexOf("$");
    String price5 = activity5.substring($index5 + 1, activity5.length());
    float fprice5 = float(price5);
    item5 = new ItineraryItem(activity5, fprice5);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item5.itemCostForWholeParty(), 350, 267.5);
    totalItinCost += float(item5.itemCostForWholeParty());

  }
  
  String activity6 = itinerary6;
  if (itin6Picked == true) {
    int $index6 = activity6.indexOf("$");
    String price6 = activity6.substring($index6 + 1, activity6.length());
    float fprice6 = float(price6);
    item6 = new ItineraryItem(activity6, fprice6);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item6.itemCostForWholeParty(), 900, 267.5);
    totalItinCost += float(item6.itemCostForWholeParty());
  }

  
  String activity7 = itinerary7;
  if (itin7Picked == true) {
    int $index7 = activity7.indexOf("$");
    String price7 = activity7.substring($index7 + 1, activity7.length());
    float fprice7 = float(price7);
    item7 = new ItineraryItem(activity7, fprice7);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item7.itemCostForWholeParty(), 350, 337.5);
    totalItinCost += float(item7.itemCostForWholeParty());
  }

  
  String activity8 = itinerary8;
  if (itin8Picked == true) {
    int $index8 = activity8.indexOf("$");
    String price8 = activity8.substring($index8 + 1, activity8.length());
    float fprice8 = float(price8);
    item8 = new ItineraryItem(activity8, fprice8);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item8.itemCostForWholeParty(), 900, 337.5);
    totalItinCost += float(item8.itemCostForWholeParty());
  }

  
  String activity9 = itinerary9;
  if (itin9Picked == true) {
    int $index9 = activity9.indexOf("$");
    String price9 = activity9.substring($index9 + 1, activity9.length());
    float fprice9 = float(price9);
    item9 = new ItineraryItem(activity9, fprice9);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item9.itemCostForWholeParty(), 350, 407.5);
    totalItinCost += float(item9.itemCostForWholeParty());
  }

  
  String activity10 = itinerary10;
  if (itin10Picked == true) {
    int $index10 = activity10.indexOf("$");
    String price10 = activity10.substring($index10 + 1, activity10.length());
    float fprice10 = float(price10);
    item10 = new ItineraryItem(activity10, fprice10);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item10.itemCostForWholeParty(), 900, 407.5);
    totalItinCost += float(item10.itemCostForWholeParty());
  }

  
  String activity11 = itinerary11;
  if (itin11Picked == true) {
    int $index11 = activity11.indexOf("$");
    String price11 = activity11.substring($index11 + 1, activity11.length());
    float fprice11 = float(price11);
    item11 = new ItineraryItem(activity11, fprice11);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item11.itemCostForWholeParty(), 350, 477.5);
    totalItinCost += float(item11.itemCostForWholeParty());
  }

  
  String activity12 = itinerary12;
  if (itin12Picked == true) {
    int $index12 = activity12.indexOf("$");
    String price12 = activity12.substring($index12 + 1, activity12.length());
    float fprice12 = float(price12);
    item12 = new ItineraryItem(activity12, fprice12);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item12.itemCostForWholeParty(), 900, 477.5);
    totalItinCost += float(item12.itemCostForWholeParty());
  }

  
  String activity13 = itinerary13;
  if (itin13Picked == true) {
    int $index13 = activity13.indexOf("$");
    String price13 = activity13.substring($index13 + 1, activity13.length());
    float fprice13 = float(price13);
    item13 = new ItineraryItem(activity13 + 1, fprice13);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item13.itemCostForWholeParty(), 350, 547.5);
    totalItinCost += float(item13.itemCostForWholeParty());
  }

  
  String activity14 = itinerary14;
  if (itin14Picked == true) {
    int $index14 = activity14.indexOf("$");
    String price14 = activity14.substring($index14 + 1, activity14.length());
    float fprice14 = float(price14);
    item14 = new ItineraryItem(activity14, fprice14);
    textSize(15);
    fill(0, 0, 0);
    text("Total Cost For " + numOfTrav + " People: $" + item14.itemCostForWholeParty(), 900, 547.5);
    totalItinCost += float(item14.itemCostForWholeParty());
  }
  
   
}



void Final() {
  float calx = 100;
  int caly = 100;
  for(int i = 0; i < 3; i++) {    
    stroke(50);
    line(calx,caly,calx+(1000-7),caly);
    caly += 150;
  }
  
  textFont(font1);
  textSize(30);
  fill(0, 0, 0);
  text("$" + nf(totalItinCost, 0, 2), 950, 490);
  float totalFinalCost = totalItinCost + vehicleAtuse.calculateTotalCost() + float(airlineAtuse.findRoundTripCost());
  text("$" + nf(totalFinalCost, 0, 2), 570, 590);
  
  caly = 100;
  
  for(int g = 0; g < 8; g++) {
    stroke(50);
    line(calx,caly,calx,caly+(150*2));
    calx += (1000/7);
  }
  textFont(font1);
  textSize(25);
  fill(0);
  text("Flight Information:",100,450);
  text("Transportation Cost:",500,450);
  text("Itinerary Cost:",900,450);
  textSize(35);
  text("Total Final Trip Cost:",450,550);
  text("Your Planner Schedule",440,75);
  
  int dx = 110;
  int dy = 125;
  for(int d = 1; d < tripbeingTaken.travelDays + 1; d++) {
  textFont(font2);
  textSize(20);
  text("Day"+d,dx,dy);
  dx += (1000/7);  
  
  if( d == 7) {
    dy = 275;
    dx = 110;   
  }
  }
  vehicleAtuse.finalTotalTransportationCost();
  
  textFont(font2);
  textSize(15);
  fill(0);
  if(itinerary1 != null) {
    String string1 = item1.activityName;
    int $index = string1.indexOf(" $");
    String activity1 = string1.substring(0, $index);
    text(activity1, 110,150); 
  }
  
  if(itinerary2 != null) {
    String string2 = item2.activityName;
    int $index = string2.indexOf(" $");
    String activity2 = string2.substring(0, $index);
    text(activity2,(110 + (1000/7)),150); 
  }
  
  if(itinerary3 != null) {
    String string3 = item3.activityName;
    int $index = string3.indexOf(" $");
    String activity3 = string3.substring(0, $index);
    text(activity3,(110+(2*(1000/7))),150); 
  }
  
  if(itinerary4 != null) {
    String string4 = item4.activityName;
    int $index = string4.indexOf(" $");
    String activity4 = string4.substring(0, $index);
    text(activity4,(110+(3*(1000/7))),150); 
  }
  
  if(itinerary5 != null) {
    String string5 = item5.activityName;
    int $index = string5.indexOf(" $");
    String activity5 = string5.substring(0, $index);
    text(activity5,(110+(4*(1000/7))),150); 
  }
  
  if(itinerary6 != null) {
    String string6 = item6.activityName;
    int $index = string6.indexOf(" $");
    String activity6 = string6.substring(0, $index);
    text(activity6,(110+(5*(1000/7))),150); 
  }
  
  if(itinerary7 != null) {
    String string7 = item7.activityName;
    int $index = string7.indexOf(" $");
    String activity7 = string7.substring(0, $index);
    text(activity7,(110+(6*(1000/7))),150); 
  }
  
  if(itinerary8 != null) {
    String string8 = item8.activityName;
    int $index = string8.indexOf(" $");
    String activity8 = string8.substring(0, $index);
    text(activity8,110,300); 
  }
  
  if(itinerary9 != null) {
    String string9 = item9.activityName;
    int $index = string9.indexOf(" $");
    String activity9 = string9.substring(0, $index);
    text(activity9,(110+(1000/7)),300); 
  }
  
  if(itinerary10 != null) {
    String string10 = item10.activityName;
    int $index = string10.indexOf(" $");
    String activity10 = string10.substring(0, $index);
    text(activity10,(110+(2*(1000/7))),300); 
  }
  
  if(itinerary11 != null) {
    String string11 = item11.activityName;
    int $index = string11.indexOf(" $");
    String activity11 = string11.substring(0, $index);
    text(activity11,(110+(3*(1000/7))),300); 
  }
  
  if(itinerary12 != null) {
    String string12 = item11.activityName;
    int $index = string12.indexOf(" $");
    String activity12 = string12.substring(0, $index);
    text(activity12,(110+(4*(1000/7))),300); 
  }
  
  if(itinerary13 != null) {
    String string13 = item11.activityName;
    int $index = string13.indexOf(" $");
    String activity13 = string13.substring(0, $index);
    text(activity13,(110+(5*(1000/7))),300); 
  }
  
  if(itinerary14 != null) {
    String string14 = item14.activityName;
    int $index = string14.indexOf(" $");
    String activity14 = string14.substring(0, $index);
    text(activity14,(110+(6*(1000/7))),300); 
  }
}
