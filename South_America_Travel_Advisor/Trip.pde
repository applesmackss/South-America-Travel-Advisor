class Trip {

  // Fields
  String fromState;    // State of origin
  String toCountry;    // Destination country
  String startDate;    // Trip start date in the format "YYYY-MM-DD"
  String endDate;      // Trip end date in the format "YYYY-MM-DD"
  int travelDays;      // Number of days for the trip
  ArrayList<Traveler> travelers; // List of travelers participating in the trip

  // Constructor
  Trip(String fs, String tc, String sd, String ed) {
    this.fromState = fs;                // Set the starting state
    this.toCountry = tc;                // Set the destination country
    this.startDate = sd;                // Set the start date
    this.endDate = ed;                  // Set the end date
    this.travelers = new ArrayList<>(); // Initialize the list of travelers
    this.travelDays = calculateDuration(); // Calculate the trip duration
  }

  // Method to calculate the duration of the trip in days
  int calculateDuration() {
    try {
        dateChecker = true; // Flag indicating valid date entry
        String[] startParts = split(this.startDate, "-"); // Split start date into [year, month, day]
        String[] endParts = split(this.endDate, "-");     // Split end date into [year, month, day]

        // Parse date components
        int startYear = int(startParts[0]);
        int startMonth = int(startParts[1]);
        int startDay = int(startParts[2]);

        int endYear = int(endParts[0]);
        int endMonth = int(endParts[1]);
        int endDay = int(endParts[2]);

        // Convert to LocalDate objects for accurate date handling
        LocalDate start = LocalDate.of(startYear, startMonth, startDay);
        LocalDate end = LocalDate.of(endYear, endMonth, endDay);

        // Calculate the number of days between the start and end dates
        long daysBetween = ChronoUnit.DAYS.between(start, end);

        return int(daysBetween + 1); // Include the start date in the duration
    } catch (Exception e) {
        dateChecker = false; // Flag indicating invalid date entry
        textSize(20);
        fill(0, 0, 0);
        text("Invalid date entered. Please check your input.", 400, 550); // Display an error message
        return -1; // Return a special value indicating an error
    }
  }

  // Method to add a traveler to the trip
  void addTraveler(Traveler traveler) {
    travelers.add(traveler); // Add the traveler to the list
  }

  // Method to calculate the total cost of the trip
  float calculateTotalCost() {
    float totalCost = 0;

    // Accumulate costs from travelers' tickets, transportation, itinerary, etc.
    for (Traveler t : travelers) {
      totalCost += t.ticketCost;
    }

    return totalCost;
  }

  // Method to display a summary of the trip
  void displaySummary() {
    fill(0);
    textFont(font2);
    textSize(15);
    text("Trip from " + fromState + " to " + toCountry, 100, 470); // Display trip origin and destination
    text("Travel Dates: " + startDate + " to " + endDate, 100, 490); // Display travel dates
    text("Duration: " + travelDays + " days", 100, 510); // Display trip duration
    text("Number of Travelers: " + travelers.size(), 100, 530); // Display the number of travelers
    fill(0);
    textFont(font1);
    textSize(25);
    text("Total Flight Cost: $" + nf((float(airlineAtuse.calculateTotalTicketsCost()) * 2), 0, 2), 100, 570); // Display round-trip cost
  }
}
