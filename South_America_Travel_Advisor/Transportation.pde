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
    textSize(25);
    fill(0);
    text("Transportation Method: " + vehicle,700,250);
    text("Daily Rate: $" + cost,700,300);
    text(("Seating Capacity: " + (maximumCapacity == -1 ? "Unlimited" : maximumCapacity)), 700,350);
    text("Trip Duration: " + tripDays + " days",700,400);
    text("Number of Travelers: " + numberOfPeople,700,450);

    if (!isValidOption()) {
      text("\nError: This transportation method",700,500);
      text("cannot accommodate all travelers.",700,575);
    } else {
      text("\nTotal Transportation Cost: $" + calculateTotalCost(),700,500);
    }
  }
  
}
