class Trip {
  
  String fromState;
  String toCountry;
  String startDate; // "YYYY-MM-DD"
  String endDate;   // "YYYY-MM-DD"
  int travelDays;
  ArrayList<Traveler> travelers;
  
  Trip(String fs, String tc, String sd, String ed) {
    this.fromState = fs;
    this.toCountry = tc;
    this.startDate = sd;
    this.endDate = ed;
    this.travelers = new ArrayList<Traveler>();
    this.travelDays = calculateDuration();
  }
  
  int calculateDuration() {
    try {
        dateChecker = true;
        String[] startParts = split(this.startDate, "-");
        String[] endParts = split(this.endDate, "-");

        int startYear = int(startParts[0]);
        int startMonth = int(startParts[1]);
        int startDay = int(startParts[2]);

        int endYear = int(endParts[0]);
        int endMonth = int(endParts[1]);
        int endDay = int(endParts[2]);

        // Validate and parse dates
        LocalDate start = LocalDate.of(startYear, startMonth, startDay);
        LocalDate end = LocalDate.of(endYear, endMonth, endDay);

        // Calculate days between
        long daysBetween = ChronoUnit.DAYS.between(start, end);

        return int(daysBetween + 1); // Include the start date
    } catch (Exception e) {
        dateChecker = false;
        textSize(20);
        fill(0, 0, 0);
        text("Invalid date entered. Please check your input.", 400, 550);
        return -1; // Return a special value indicating an error
    }
}

  void addTraveler(Traveler traveler) {
    travelers.add(traveler);
  }

  float calculateTotalCost() { // Blank for now
    float totalCost = 0;

    // Add costs from flights, transportation, and itinerary here
    for (Traveler t : travelers) {
      totalCost += t.ticketCost; // Example
    }

    return totalCost;
  }

  void displaySummary() {
    fill(0);
    textFont(font2);
    textSize(15);
    text("Trip from " + fromState + " to " + toCountry,100,470);
    text("Travel Dates: " + startDate + " to " + endDate,100,490);
    text("Duration: " + travelDays + " days",100,510);
    text("Number of Travelers: " + travelers.size(),100,530);
    fill(0);
    textFont(font1);
    textSize(25);
    text("Total Flight Cost: $" + nf((float(airlineAtuse.calculateTotalTicketsCost()) * 2), 0, 2),100,570);
  }
}
