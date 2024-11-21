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
 
}
