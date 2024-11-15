class Transportation {

  //Fields
  String vehicle;
  float cost; //per day
  int maxiumCapacity;
  int numberofPeople;
  
  //Constructor
  Transportation (String v, float c, int mc) {
  
    this.vehicle = v;
    this.cost = c;
    this.maxiumCapacity = mc;
  
  }

  //Methods
  void getCost() {
    float days = 23;
    float overallCost = cost * days; //days should be turned into a variable that will know the # of days
    println("The cost of this vehicle per day is $"+this.cost+".");
    println("The overall cost to use the",this.vehicle,"is $"+overallCost,"for", days, "days.");  
  }

}
