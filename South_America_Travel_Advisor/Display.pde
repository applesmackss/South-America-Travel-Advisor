void display() {
  color backcol = color(0,0,0);
  if(pageOn == "start") {
    Start.setVisible(true);  
    About.setVisible(true);
  }
  if(pageOn == "about") {
    Start.setVisible(false);  
    About.setVisible(false);
    rect(0,0,width,height);
    backcol = color(252,0,252);
    fill(backcol);
  }
  if(pageOn == "info1") {
    Start.setVisible(false);  
    About.setVisible(false);
    rect(0,0,width,height);
    backcol = color(0,252,252);
    fill(backcol);
  }
  if(pageOn == "info2") {
    Start.setVisible(false);  
    About.setVisible(false);
    backcol = color(0,0,252);
    fill(backcol);
  }
  if(pageOn == "final") {
    Start.setVisible(false);  
    About.setVisible(false);
    backcol = color(0,252,0);
    fill(backcol);
  }

















}
