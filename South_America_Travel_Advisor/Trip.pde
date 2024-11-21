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
    String[] startParts = split(startDate, "-");
    String[] endParts = split(endDate, "-");
    
    int startYear = int(startParts[0]);
    int startMonth = int(startParts[1]);
    int startDay = int(startParts[2]);

    int endYear = int(endParts[0]);
    int endMonth = int(endParts[1]);
    int endDay = int(endParts[2]);

    // Convert to Java LocalDate for easy calculation
    LocalDate start = LocalDate.of(startYear, startMonth, startDay);
    LocalDate end = LocalDate.of(endYear, endMonth, endDay);
    
    long daysBetween = ChronoUnit.DAYS.between(start, end);
    
    return int(daysBetween);

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
    text("Total Flight Cost: $" + calculateTotalCost(),100,570);
  }
}
  
  
