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
    println("Transportation Method: " + vehicle);
    println("Daily Rate: $" + cost);
    println("Seating Capacity: " + (maximumCapacity == -1 ? "Unlimited" : maximumCapacity));
    println("Trip Duration: " + tripDays + " days");
    println("Number of Travelers: " + numberOfPeople);

    if (!isValidOption()) {
      println("\nError: This transportation method cannot accommodate all travelers.");
    } else {
      println("\nTotal Transportation Cost: $" + calculateTotalCost());
    }
  }
  
}
