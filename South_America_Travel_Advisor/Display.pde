
void display() {
  color backcol = color(255,255,255);
  PVector bookCoord = new PVector(50,25);
  PVector bookShape = new PVector(1100,600);

  if(pageOn == "start") {
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
    
    if(numOfTrav != 0) {
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
    
    if (vehicleAtuse != null) {
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
    Finish.setVisible(true);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
  }
  
  if(pageOn == "final") {
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
  textSize(35);
  textFont(font1);
  text("Number of Travelers?",100,100);
  if(numOfTrav > 1) {
  text("How many under 12 years old?",100,250);
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
  textSize(35);
  text("How many of these kids are under 2?",100,400);
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
