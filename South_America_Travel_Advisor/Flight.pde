class Flight {
  
  //Fields 
  String uState;
  String destination;
  float cost;
  float distance;
  boolean children;
  
  Flight(String uS, String d, float c, float dist) {
    this.uState = uS;
    this.destination = d;
    this.cost = c;
    this.distance = dist;
    
  }
  
  void checkAge() {
    if (numPeople > 1) {
      println("Do you have any children under the age of 12?");
    }
  }
}
