class Flight {
  
  //Fields 
  String airline;
  float ratePerKm;
  float distance;
  ArrayList<Traveler> passengers;
  float finalDistance;
  
  Flight(String a, float rpk) {
    this.airline = a;
    this.ratePerKm = rpk;
    this.distance = getDistance();
    this.passengers = new ArrayList<Traveler>();
  }
  
  void addPassenger(Traveler traveler) {
    passengers.add(traveler);  
}

  float getDistance() {
    String stateToCountry = (stateChosen + " to " + countryChosen);
    for (int i = 0; i < dislength; i++) {
      String dataLine = distanceData[i];
      String[] commaSplit = dataLine.split(", ");
      String dataStateToCountry = commaSplit[0];
      if (stateToCountry.equals(dataStateToCountry)) {
         finalDistance = float(commaSplit[1]);
      }
    }
    return finalDistance;

  }
  
  
  String calculateTotalTicketsCost() {
    float totalCost = 0;
    float decimals = 2;
    float power = pow(10, decimals);

    
    for (Traveler traveler : passengers) {
      traveler.calculateTicketCost(getDistance(), ratePerKm);
      totalCost += traveler.ticketCost;
    }
    totalCost = totalCost * power;
    totalCost = round(totalCost);
    float rounded = totalCost / power;
    String roundedStringto2Decimals = nf(rounded, 0, 2);
    println(roundedStringto2Decimals);
    
      return roundedStringto2Decimals;
  }
  
  String findRoundTripCost() {
    float cost = float(calculateTotalTicketsCost());
    float roundTripCost = cost * 2;
    String formatedRoundTrip = nf(roundTripCost, 0, 2);
    
    return formatedRoundTrip;
  }
  
  void displayFlightSummary() {
    textFont(font2);
    textSize(15);
    fill(0);
    if(airlineChosen.equals ("Flying Sheep") ){
      text("Flying Sheep is the cheapest flight on the market with a ratePerKm of "+airlineAtuse.ratePerKm+".",100,220);
      text("This is the most cheap stake flight to take, you can have the following,",100,240);
      text("a never cleaned washroom, food that is only microwaved, water as",100,260);
      text("your only source of drinks. Plane assistants are quite busy and probably",100,280);
      text("won't be there to help you if you need something.",100,300);
    }
    
    if(airlineChosen.equals ("Normalize AVG") ){
      text("Normalize AVG is an average normal class flight on the market with a",100,220);
      text("ratePerKm of "+airlineAtuse.ratePerKm+". This is an average used airline for family, who just",100,240);
      text("want a normal and comfortable journey. This airline provides, clean",100,260);
      text("bathrooms, fresh food and even multiple beverage options than just water.",100,280);
      text("Howeverthis airline gets quite crowded due its high, so beware",100,300);
      text("of that.",100,320);
    }
    
    if(airlineChosen.equals ("Luxarice") ){
      text("Luxarice is the most expensive flight on the market with a ratePerKm of "+airlineAtuse.ratePerKm+".",100,220);
      text("This is the most luxurarious flight to take, you can have the following, elite",100,240);
      text("tier food. You can even take a nice little nap when watching a show.",100,260);
      text("Oh and best of all, you always have access to a plane assistant whenever",100,280);
      text("you need something.",100,300);
    }
  
  }
 
}
