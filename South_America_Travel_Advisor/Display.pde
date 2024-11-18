void display() {
  color backcol = color(255,255,255);
  PVector bookCoord = new PVector(50,25);
  PVector bookShape = new PVector(1100,600);
  PFont font1, font2;

  if(pageOn == "start") {
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
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
    textSize(75);
    fill(0);
    text("South America Travel Advisor",140,height/2);
  }
  
  if(pageOn == "about") {
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
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
    font1 = loadFont("Cambria-Bold-48.vlw");
    font2 = loadFont("MicrosoftPhagsPa-48.vlw");
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
  
  if(pageOn == "info1") {
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(true);
    EndDate.setVisible(true);
    StartingLocation.setVisible(true);
    EndingLocation.setVisible(true);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(true);
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info1();
    
  }
  if(pageOn == "info2") {
    NumOfTravelers.setVisible(true);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(true);
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info2();
  }
  
  if(pageOn == "info3") {
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(true);
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info3();
  }
  
  if(pageOn == "info4") {
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
    StartingLocation.setVisible(false);
    EndingLocation.setVisible(false);
    TransportationType.setVisible(true);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(true);
    Previous.setVisible(true);
    Finish.setVisible(false);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    Info4();
  }
  
  if(pageOn == "info5") {
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
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
    TravUnder2.setVisible(false);
    TravLess12.setVisible(false);
    NumOfTravelers.setVisible(false);
    StartDate.setVisible(false);
    EndDate.setVisible(false);
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
  }


}

void Info1() {
  fill(0);
  textSize(35);
  text("Starting Location",100,200);
  text("Ending Location",700,200);
  text("Start Date",100,400);
  text("End Date",700,400);

}

void Info2() {
  fill(0);
  textSize(35);
  text("Number of Travelers?",100,100);
  if(numOfTrav > 1) {
  text("How many under 12 years old?",100,300);
  TravLess12.setVisible(true);
  text("How many of these kids are under 2?",100,500);
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
  text("What airline do you prefer?",100,100);
  text("State → Country",100,300);
}

void Info4() {
  rect(100,225,500,375);
  fill(0);
  textSize(20);
  text("Transporation Type",100,150);
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
  textSize(25);
  fill(0);
  text("Total Flight Cost:",100,450);
  text("Transportation Cost:",500,450);
  text("Itinerary Cost:",900,450);
  textSize(35);
  text("Total Final Trip Cost:",450,550);
  text("Your Planner Schedule",450,75);
  
  int dx = 110;
  for(int d = 1; d < 8; d++) {
  text("Day"+d,dx,135);
  dx += (1000/7);  
  }
  
  dx = 110;
  for(int d = 8; d < 15; d++) {
  text("Day"+d,dx,285);
  dx += (1000/7);  
  }
}
