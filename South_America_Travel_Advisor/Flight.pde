class Flight {
  
  //Fields 
  String airline;
  float ratePerKm;
  float distance;
  ArrayList<Traveler> passengers;
  
  Flight(String a, float rpk, float d) {
    this.airline = a;
    this.ratePerKm = rpk;
    this.distance = d;
    this.passengers = new ArrayList<Traveler>();
  }
  
  void addPassnger(Traveler traveler) {
    passengers.add(traveler);  
}
  
  
  float calculateTotalCost() {
    float totalCost = 0;
    
    for (Traveler traveler : passengers) {
      traveler.calculateTicketCost(distance, ratePerKm);
      totalCost += traveler.ticketCost;
    }
    
      return totalCost;
  }
  
 
}
