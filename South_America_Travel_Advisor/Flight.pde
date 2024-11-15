class Flight {
  
  //Fields 
  String uState;
  String destination;
  int nPeople;
  float cost;
  float distance;
  boolean children;
  
  Flight(String uS, String d, int np, float c, float dist) {
    this.uState = uS;
    this.destination = d;
    this.nPeople = np;
    this.cost = c;
    this.distance = dist;
    
  }
  
  void checkNumPeople() {
    //Some GUI that lets the user input a number for the number of passengers they have
  }
  
  void checkAge() {
      textSize(12);
      fill(0);
      text("Do you have any children under the age of 12?", 100, 400);
    }
    //Lets the user pick yes or no for the question, if yes, boolean children = true. If no, boolean children = false
    
    
  }
