class ItineraryItem {
  // Fields
  String activityName;  // Name of the activity
  float cost;           // Cost of the activity per person

  // Constructor
  ItineraryItem(String activityName, float cost) {
    this.activityName = activityName; // Set the activity name
    this.cost = cost;                 // Set the cost per person
  }

  // Method to calculate and format the total cost of the activity for the whole party
  String itemCostForWholeParty() {
    // Multiply the per-person cost by the number of travelers to get the total cost
    String costForWholeParty = nf(cost * numOfTrav, 0, 2); // Format the total cost to two decimal places
    return costForWholeParty; // Return the formatted total cost
  }
}
