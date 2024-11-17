class Traveler {
  int age;
  float ticketCost;

  Traveler(int age) {
    this.age = age;
    this.ticketCost = 0;
  }

  // Method to calculate ticket cost
  void calculateTicketCost(float distance, float ratePerKm) {
    if (age < 2) {
      ticketCost = 0;
    } else if (age <= 12) {
      ticketCost = distance * ratePerKm * 0.8;
    } else {
      ticketCost = distance * ratePerKm;
    }
  }
}
