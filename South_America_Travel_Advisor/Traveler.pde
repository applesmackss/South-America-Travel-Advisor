class Traveler {
  // Fields
  int age;           // Age of the traveler
  float ticketCost;  // Cost of the traveler's ticket

   // Constructor to initialize a Traveler object.
  Traveler(int age) {
    this.age = age;          // Set the traveler's age
    this.ticketCost = 0;     // Initialize ticket cost to 0
  }

  // Calculates the ticket cost for the traveler based on their age, distance, and rate per kilometer.
  void calculateTicketCost(float distance, float ratePerKm) {
    if (age < 2) {
      // Infants under 2 years travel free
      ticketCost = 0;
    } else if (age <= 12) {
      // Children aged 2 to 12 get an 80% discounted ticket cost
      ticketCost = distance * ratePerKm * 0.8;
    } else {
      // Adults (12+ years) pay the full ticket price
      ticketCost = distance * ratePerKm;
    }
  }
}
