class Transportation {

  //Fields
  String vehicle;
  float cost; //per day
  int maxiumCapacity;
  int numberofPeople;
  
  //train,bus, 5,7,11 seaters
  //Transportation("train", - , "10")
  //Transportation("bus", - , "10")
  //Transportation("car", - , "5")\
  //Transportation("miny van", - , "7")
  //Transportation("vans", - , "11")
  
  //Constructor
  Transportation (String v, float c, int mc) {
  
    this.vehicle = v;
    this.cost = cost;
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
