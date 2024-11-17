void display() {
  color backcol = color(255,255,255);
  PVector bookCoord = new PVector(50,25);
  PVector bookShape = new PVector(1100,600);

  if(pageOn == "start") {
    TransportationType.setVisible(false);
    Start.setVisible(true);  
    About.setVisible(true);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(false);
    Finish.setVisible(false);
  }
  
  if(pageOn == "about") {
    TransportationType.setVisible(false);
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(true);
    Next.setVisible(false);
    Previous.setVisible(false);
    Finish.setVisible(false);
    fill(backcol);
    rect(300,25,600,650);
  }
  
  if(pageOn == "info1") {
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
  text("How many under 12 years old?",100,300);
  text("How many of these kids are under 2?",100,500);


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
  textSize(35);
  text("What kind of transporation would you like in this country?",100,100);
  text("Summary: ",275,270);
  text("Cost of Method Chosen",700,200);
  fill(255);
  if(vehicleAtuse != null) {
  vehicleAtuse.displayTransportationDetails();
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
}
