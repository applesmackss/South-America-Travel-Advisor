class Flight {
  
  // Fields
  String airline;                   // Name of the airline
  float ratePerKm;                  // Rate charged per kilometer by the airline
  float distance;                   // Distance between the starting location and the destination
  ArrayList<Traveler> passengers;   // List of travelers on the flight
  float finalDistance;              // Stores the calculated distance for the flight

  // Constructor
  Flight(String a, float rpk) {
    this.airline = a;                 // Set the airline name
    this.ratePerKm = rpk;             // Set the rate per kilometer
    this.distance = getDistance();    // Calculate and set the distance for the flight
    this.passengers = new ArrayList<Traveler>(); // Initialize the passengers list
  }

  // Method to add a traveler to the list of passengers for the flight
  void addPassenger(Traveler traveler) {
    passengers.add(traveler);  
  }

  // Method to get distance between the selected state and country by parsing data file
  float getDistance() {
    String stateToCountry = (stateChosen + " to " + countryChosen); // Combine state and country into a key
    for (int i = 0; i < dislength; i++) {
      String dataLine = distanceData[i];        // Read each line of distance data
      String[] commaSplit = dataLine.split(", "); // Split the line into state-to-country and distance
      String dataStateToCountry = commaSplit[0]; // Extract the state-to-country string
      if (stateToCountry.equals(dataStateToCountry)) { // Match the key with the data
         finalDistance = float(commaSplit[1]); // Parse and set the distance
      }
    }
    return finalDistance; // Return the calculated distance
  }

  // Method to calculate total ticket cost for all passengers, rounded to two decimal places
  String calculateTotalTicketsCost() {
    float totalCost = 0; // Initialize total cost
    float decimals = 2;  // Number of decimal places
    float power = pow(10, decimals); // Used for rounding

    for (Traveler traveler : passengers) {
      traveler.calculateTicketCost(getDistance(), ratePerKm); // Calculate ticket cost for each traveler
      totalCost += traveler.ticketCost; // Add the cost to the total
    }

    // Rounding Stuff
    totalCost = totalCost * power;
    totalCost = round(totalCost);
    float rounded = totalCost / power;
    String roundedStringto2Decimals = nf(rounded, 0, 2);

    return roundedStringto2Decimals; // Return the formatted cost
  }

  // Calculates round trip cost (total flight cost x 2)
  String findRoundTripCost() {
    float cost = float(calculateTotalTicketsCost());
    float roundTripCost = cost * 2;                 // Double the cost for a round trip
    String formatedRoundTrip = nf(roundTripCost, 0, 2); // Format the round trip cost to two decimal places

    return formatedRoundTrip; // Return the formatted round trip cost
  }

  // Displays summary of flight based on the chosen airline
  void displayFlightSummary() {
    textFont(font2);
    textSize(15);
    fill(0);

    // Summary for "Raspberry" airline
    if (airlineChosen.equals("Raspberry Airlines")) {
      text("Razzberry Airlines is the cheapest flight on the market with a ratePerKm of", 100, 220);
      text(airlineAtuse.ratePerKm + ". This is the most cheap stake flight to take, you can have the following,", 100, 240);
      text("a never cleaned washroom, food that is only microwaved, water as", 100, 260);
      text("your only source of drinks. Plane assistants are quite busy and probably", 100, 280);
      text("won't be there to help you if you need something.", 100, 300);
    }

    // Summary for "Gold" airline
    if (airlineChosen.equals("Gold Airlines")) {
      text("Gold Airlines is an average normal class flight on the market with a", 100, 220);
      text("ratePerKm of " + airlineAtuse.ratePerKm + ". This is an average used airline for family, who just", 100, 240);
      text("want a normal and comfortable journey. This airline provides, clean", 100, 260);
      text("bathrooms, fresh food and even multiple beverage options than just water.", 100, 280);
      text("However this airline gets quite crowded due its high, so beware", 100, 300);
      text("of that.", 100, 320);
    }

    // Summary for "Diamond" airline
    if (airlineChosen.equals("Diamond Airlines")) {
      text("Diamond Airlines is the most expensive flight on the market with a", 100, 220);
      text("ratePerKm of" + airlineAtuse.ratePerKm + ".This is the most luxurious flight to take, you can", 100, 240);
      text("have the following, elite tier food. You can even take a nice little nap", 100, 260);
      text("when watching a show. Oh and best of all, you always have access to a", 100, 280);
      text("plane assistant whenever you need something.", 100, 300);
    }
  }
}
