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
  
  
  float calculateTotalTicketsCost() {
    float totalCost = 0;
    
    for (Traveler traveler : passengers) {
      traveler.calculateTicketCost(distance, ratePerKm);
      totalCost += traveler.ticketCost;
    }
    
      return totalCost;
  }
  
 
}
