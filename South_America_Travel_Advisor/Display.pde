void display() {
  color backcol = color(0,0,0);
  PVector bookCoord = new PVector(300,0);
  PVector bookShape = new PVector(600,height);
  if(pageOn == "start") {
    Start.setVisible(true);  
    About.setVisible(true);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(false);
    Finish.setVisible(false);
  }
  if(pageOn == "about") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(true);
    Next.setVisible(false);
    Previous.setVisible(false);
    Finish.setVisible(false);
    backcol = color(252,0,252);
    fill(backcol);
    rect(bookCoord.x,25,bookShape.x,650);
  }
  if(pageOn == "info1") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(true);
    Previous.setVisible(true);
    Finish.setVisible(false);
    Flight a = new Flight("a","b",1,2,3);
    a.checkAge();
    backcol = color(0,252,252);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    
  }
  if(pageOn == "info2") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(true);
    Finish.setVisible(true);
    backcol = color(0,0,252);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
  }
  if(pageOn == "final") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(true);
    Finish.setVisible(false);
    backcol = color(0,252,0);
    fill(backcol);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
  }

















}
