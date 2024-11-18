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
  
  void displayFlightDetails() {
    println("Airline: " + airline);
    println("Distance: " + distance + " km");
    println("Rate per km: $" + ratePerKm);
    println("Number of Passengers: " + passengers.size());

    println("\nTicket Costs:");
    for (int i = 0; i < passengers.size(); i++) {
      Traveler traveler = passengers.get(i);
      println("Passenger " + (i + 1) + ": Age " + traveler.age + " - Ticket Cost: $" + traveler.ticketCost);
    }

    println("\nTotal Flight Cost: $" + calculateTotalCost());
  }
}
