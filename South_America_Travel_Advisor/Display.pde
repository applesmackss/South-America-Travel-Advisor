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
    rect(bookCoord.x,100,bookShape.x,700);
    backcol = color(252,0,252);
    fill(backcol);
  }
  if(pageOn == "info1") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(true);
    Previous.setVisible(true);
    Finish.setVisible(false);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    backcol = color(0,252,252);
    fill(backcol);
  }
  if(pageOn == "info2") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(true);
    Finish.setVisible(true);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    backcol = color(0,0,252);
    fill(backcol);
  }
  if(pageOn == "final") {
    Start.setVisible(false);  
    About.setVisible(false);
    X.setVisible(false);
    Next.setVisible(false);
    Previous.setVisible(true);
    Finish.setVisible(false);
    rect(bookCoord.x,bookCoord.y,bookShape.x,bookShape.y);
    backcol = color(0,252,0);
    fill(backcol);
  }

















}
