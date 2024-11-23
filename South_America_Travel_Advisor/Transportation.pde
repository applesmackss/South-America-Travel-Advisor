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
  
  //Void displays the details the transportation
  void displayTransportationDetails() {
    textFont(font1);
    textSize(25);
    fill(0);
    
    //Adding text to page 4
    text("Transportation Method: " + vehicle,700,250); // Shows the Transportation Method that is being used
    text("Daily Rate: $" + nf(cost, 0, 2),700,300); // ShowsT te rental cost of this vehicle per day
    text(("Seating Capacity: " + (maximumCapacity == -1 ? "Unlimited" : maximumCapacity)), 700,350); // The maxium seating capacity this vehicle has
    text("Trip Duration: " + tripDays + " days",700,400); // Shows how many days your trip is going to last 
    text("Number of Travelers: " + numberOfPeople,700,450); // Shows the number of travelers that are going on vacation
    
    //If the transportation isn't valid meaning maximum capacity is less than the number of travelerers
    if (!isValidOption()) {
      fill(255,0,0);
      text("\nError: This transportation method",700,500); //Shows the error message
      text("cannot accommodate all travelers.",700,575); //Shows the reason why it won't work
    } else {
      text("\nTotal Transportation Cost: $" + nf(calculateTotalCost(), 0, 2),700,500); //This shows the total cost for using this transportation in the following days
    }
  }
  
  //Talks about what each of the vehicles do in the summary box
  void displayTransportationSummary() {
    fill(0);
    textFont(font2);
    textSize(14);
    
    //if the vehicle they picked is car, they describe what this vehicle does
    if (vehicle.equals("car")) {
      text("This is a 5 seater vehicle that is availble for rent. Popular cars for this option ", 110, 300);
      text("include but are not limited to: Toyota Corolla, Honda Civic, Toyota RAV4, and ", 110, 320);
      text("Mazda CX-5. This is a great option for travellers who want to have more ", 110, 340);
      text("freedom over how they travel across the country. However, this option is quite ", 110, 360);
      text("expensive for solo travellers and small families, so be wary of your budget.", 110, 380);
    }
    
   //if the vehicle they picked is train, they describe what this vehicle does 
    if (vehicle.equals("train")) {
     text("The train is a great option for large families or travellers with a lower budget.", 110, 300);
     text("It is a great option for travelling across South America, as it is faster than a bus ", 110, 320);
     text("and more affordable than renting a vehicle. Although South America doesn't ", 110, 340);
     text("have the extensive train routes that Japan or countries in Europe do, it can ", 110, 360);
     text("still be a memorable journey for tourists ", 110, 380);
  }
    
    //if the vehicle they picked is van, they describe what this vehicle does
   if (vehicle.equals("van")) {
    text("This is a 11 seater vehicle that is availble for rent. Popular vans for this option ", 110, 300);
    text("include but are not limited to: Toyota Sienna, Honda Oddessey, and Hyundai ", 110, 320);
    text("Ebtourage. This is a great option for very large families who want to have more ", 110, 340);
    text("freedom over how they travel across the country. This option is the most ", 110, 360);
    text("expensive option out of the 5, so be wary of your budget.", 110, 380);
  }
  
  //if the vehicle they picked is bus, they describe what this vehicle does
  if (vehicle.equals("bus")) {
    text("Although it may not be as comfortable or fast as the train, the bus is the best ", 110, 300);
    text(" option for travellers who are on a tight budget. Busses are ubiquitous in South ", 110, 320);
    text("America, so rest assured that no matter which country you visit, you will be ", 110, 340);
    text("able to frequently find busses to ride. ",110,360);
  
    }
    
  //if the vehicle they picked is minivan, they describe what this vehicle does
  if (vehicle.equals("minivan")) {
    text("The minivan is a 8-seat vehicle that is availble for rent. Popular minivans include ", 110, 300);
    text("but are no limited to: Lincoln Navigator, Chevrolet Suburban, Subaru Ascent, ", 110, 320);
    text("and Kia Carnival. This is a great option for large families who don't want to ride ", 110, 340);
    text("a train or bus. Like the other 2 rentable vehicles, this option is quite expensive, ", 110, 360);
    text("costing a whopping $70 per day to rent. ", 110, 380);
  
   }
  
 }
 
 //Display the final total transportation class on the final page
 void finalTotalTransportationCost() {
   textFont(font1);
   textSize(30);
   fill(0);
   text("$"+ nf(calculateTotalCost(), 0, 2),570,490); //Shows the total amount of cost needed for transportation
 }

  
}
