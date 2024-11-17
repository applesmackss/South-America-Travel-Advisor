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
    textSize(35);
    text("Transportation Method: " + vehicle,100,200);
    text("Daily Rate: $" + cost,100,200);
    text(("Seating Capacity: " + (maximumCapacity == -1 ? "Unlimited" : maximumCapacity)), 100,200);
    text("Trip Duration: " + tripDays + " days",100,200);
    text("Number of Travelers: " + numberOfPeople,100,200);

    if (!isValidOption()) {
      text("\nError: This transportation method cannot accommodate all travelers.",100,200);
    } else {
      text("\nTotal Transportation Cost: $" + calculateTotalCost(),100,200);
    }
  }
  
}
