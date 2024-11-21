class Transportation {

  //Fields
  String vehicle;
  float cost; //per day
  int maximumCapacity;
  int tripDays;
  int numberOfPeople;
  
  //Constructor
  Transportation (String v, float c, int mc, int td, int nOP) {
    this.vehicle = v;
    this.cost = c;
    this.maximumCapacity = mc;
    this.tripDays = td;
    this.numberOfPeople = nOP;
  
  }

  // Method to see if the chosen transportation method is valid
  boolean isValidOption() {
    return numberOfPeople <= maximumCapacity || vehicle.equals("train") || vehicle.equals("bus");
  }
  
  // Calculate total cost for transportation
  float calculateTotalCost() {
    if (!isValidOption()) {
      println("Selected transportation method cannot accommodate the number of travelers.");
      return 0;
  }
  
  // Calculate cost based on daily rate and number of travelers
  if (vehicle.equals("train") || vehicle.equals("bus")) {
    return numberOfPeople * cost * tripDays; // Per-person rate
  }
  else {
    return cost * tripDays; // Per-vehicle rate
  }
  }
  
  void displayTransportationDetails() {
    textFont(font1);
    textSize(25);
    fill(0);
    text("Transportation Method: " + vehicle,700,250);
    text("Daily Rate: $" + nf(cost, 0, 2),700,300);
    text(("Seating Capacity: " + (maximumCapacity == -1 ? "Unlimited" : maximumCapacity)), 700,350);
    text("Trip Duration: " + tripDays + " days",700,400);
    text("Number of Travelers: " + numberOfPeople,700,450);

    if (!isValidOption()) {
      fill(255,0,0);
      text("\nError: This transportation method",700,500);
      text("cannot accommodate all travelers.",700,575);
    } else {
      text("\nTotal Transportation Cost: $" + nf(calculateTotalCost(), 0, 2),700,500);
    }
  }
  
  void displayTransportationSummary() {
    fill(0);
    textFont(font2);
    textSize(14);
    if (vehicle.equals("car")) {
      text("This is a 5 seater vehicle that is availble for rent. Popular cars for this option ", 110, 300);
      text("include but are not limited to: Toyota Corolla, Honda Civic, Toyota RAV4, and ", 110, 320);
      text("Mazda CX-5. This is a great option for travellers who want to have more ", 110, 340);
      text("freedom over how they travel across the country. However, this option is quite ", 110, 360);
      text("expensive for solo travellers and small families, so be wary of your budget.", 110, 380);
    }
    
   if (vehicle.equals("train")) {
     text("The train is a great option for large families or travellers with a lower budget.", 110, 300);
     text("It is a great option for travelling across South America, as it is faster than a bus ", 110, 320);
     text("and more affordable than renting a vehicle. Although South America doesn't ", 110, 340);
     text("have the extensive train routes that Japan or countries in Europe do, it can ", 110, 360);
     text("still be a memorable journey for tourists ", 110, 380);
  }
  
  if (vehicle.equals("van")) {
    text("This is a 11 seater vehicle that is availble for rent. Popular vans for this option ", 110, 300);
    text("include but are not limited to: Toyota Sienna, Honda Oddessey, and Hyundai ", 110, 320);
    text("Ebtourage. This is a great option for very large families who want to have more ", 110, 340);
    text("freedom over how they travel across the country. This option is the most ", 110, 360);
    text("expensive option out of the 5, so be wary of your budget.", 110, 380);
  }
  
  if (vehicle.equals("bus")) {
    text("Although it may not be as comfortable or fast as the train, the bus is the best ", 110, 300);
    text(" option for travellers who are on a tight budget. Busses are ubiquitous in South ", 110, 320);
    text("America, so rest assured that no matter which country you visit, you will be ", 110, 340);
    text("able to frequently find busses to ride. ",110,360);
  
    }
    
  if (vehicle.equals("minivan")) {
    text("The minivan is a 8-seat vehicle that is availble for rent. Popular minivans include ", 110, 300);
    text("but are no limited to: Lincoln Navigator, Chevrolet Suburban, Subaru Ascent, ", 110, 320);
    text("and Kia Carnival. This is a great option for large families who don't want to ride ", 110, 340);
    text("a train or bus. Like the other 2 rentable vehicles, this option is quite expensive, ", 110, 360);
    text("costing a whopping $70 per day to rent. ", 110, 380);
  
   }
  
 }
 
 void finalTotalTransportationCost() {
   textFont(font1);
   textSize(30);
   fill(0);
   text("$"+ nf(calculateTotalCost(), 0, 2),580,490); 
 }

  
}
