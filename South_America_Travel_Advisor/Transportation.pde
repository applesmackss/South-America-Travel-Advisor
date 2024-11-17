//class Transportation {

//  //Fields
//  String vehicle;
//  float cost; //per day
//  int maxiumCapacity;
//  int tripDays;
//  int numberOfPeople;
  
//  //Constructor
//  Transportation (String v, float c, int mc, int td, int nOP) {
//    this.vehicle = v;
//    this.cost = c;
//    this.maxiumCapacity = mc;
//    this.tripDays = td;
//    this.numberOfPeople = nOP;
  
//  }

//  // Method to see if the chosen transportation method is valid
//  boolean isValidOption() {
//    return numberOfPeople <= maxiumCapacity || vehicle.equals("train pass") || method.equals("bus pass");
//  }

//  //Methods
//  void getCost() {
//    float days = 23;
//    float overallCost = cost * days; //days should be turned into a variable that will know the # of days
//    println("The cost of this vehicle per day is $"+this.cost+".");
//    println("The overall cost to use the",this.vehicle,"is $"+overallCost,"for", days, "days.");  
//  }

//}
