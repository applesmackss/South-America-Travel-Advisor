class Itinerary {
  // Fields
  ArrayList<ItineraryItem> selectedActivities;  // Activities selected for the trip
  int tripDays;                                 // Number of days in the trip
  int travelers;                                // Number of travelers

  // Constructor
  Itinerary(int tripDays, int travelers) {
    this.tripDays = tripDays;
    this.travelers = travelers;
    this.selectedActivities = new ArrayList<ItineraryItem>();
  }


  // Method to select an activity for a specific day
  void selectActivityForDay(int day, ItineraryItem activity) {
    if (selectedActivities.size() < day) {
      selectedActivities.add(activity);
    } else {
      selectedActivities.set(day - 1, activity); // Replace activity for the given day
    }
    println("Activity added for Day " + day + ": " + activity.activityName);
  }

  // Method to calculate the total cost of the itinerary
  float calculateTotalCost() {
    float totalCost = 0;
    for (ItineraryItem activity : selectedActivities) {
      totalCost += activity.cost * travelers;
    }
    return totalCost;
  }

  // Method to display the itinerary
  void displayItinerary() {
    println("Itinerary for " + tripDays + " days:");
    for (int i = 0; i < tripDays; i++) {
      String day = "Day " + (i + 1) + ": ";
      if (i < selectedActivities.size()) {
        ItineraryItem activity = selectedActivities.get(i);
        day += activity.activityName + " ($" + activity.cost + " per person)";
      } else {
        day += "No activity selected.";
      }
      println(day);
    }
    println("\nTotal Itinerary Cost: $" + calculateTotalCost());
  }
}
