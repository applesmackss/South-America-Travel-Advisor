class Flight {
  
  //Fields 
  String uState;
  String destination;
  int age;
  float cost;
  int nPeople;
  float distance;
  
  Flight (String uS, String d, int a, float c, int nP, float dist) {
    this.uState = uS;
    this.destination = d;
    this.age = a;
    this.cost = c;
    this.nPeople = nP;
    this.distance = dist;
    
  }
  
  void checkAge() {
    if (nPeople > 1) {
      println("Do you have any children under the age of 12?");
  
