class ItineraryItem {
  // Fields
  String country;
  String activityName;
  float cost; // per person

  // Constructor
  ItineraryItem(String country, String activityName, float cost) {
    this.country = country;
    this.activityName = activityName;
    this.cost = cost;
  }

  // Method to display item details
  void displayItemDetails() {
    println("Country: " + country);
    println("Activity: " + activityName);
    println("Cost per Person: $" + cost);
    println();
  }
}
