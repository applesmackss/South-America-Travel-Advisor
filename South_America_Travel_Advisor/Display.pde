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
    fill(255);
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
          text("We unfortunately do not provide services if your vacation is above 2 weeks.",250,600);
        }
        
        if(tripbeingTaken.travelDays < 1) {
          text("We are not time travelers, we can not go to the past sorry for the incovenience.",250,600);
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
    airline2 = new Flight("Average Steve",0.16);
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
    
    if(itinerary1 != null) {
      Finish.setVisible(true);
    }
    
    else {
      Finish.setVisible(false);
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
  text(stateChosen+" to "+countryChosen,100,300);
  if (airlineAtuse != null) {
    text("Distance: " + airlineAtuse.getDistance() + " km", 100, 400);
    
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
      x += 800;    
    }  
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
  int y = 125;
  for(int d = 1; d < tripbeingTaken.travelDays + 1; d++) {
  textFont(font2);
  textSize(20);
  text("Day"+d,dx,y);
  dx += (1000/7);  
  
  if( d == 7) {
    y = 275;
    dx = 110;   
  }
  }
  vehicleAtuse.finalTotalTransportationCost();
}
