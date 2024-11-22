class ItineraryItem {
  // Fields
  String activityName;
  float cost; // per person

  // Constructor
  ItineraryItem(String activityName, float cost) {
    this.activityName = activityName;
    this.cost = cost;
  }

  // Method to display item details
  String itemCostForWholeParty() {
    String costForWholeParty = nf(cost * numOfTrav, 0, 2);
    return costForWholeParty;
    //text("Total Cost For " + numOfTrav + " People: $" + costForWholeParty, 350, 127.5);
  }
}
