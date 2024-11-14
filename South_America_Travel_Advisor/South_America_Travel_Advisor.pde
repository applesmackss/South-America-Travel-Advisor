// Need G4P library
import g4p_controls.*;
// You can remove the PeasyCam import if you are not using
// the GViewPeasyCam control or the PeasyCam library.
//import peasy.*;
String pageOn = "start";




public void setup(){
  size(1200, 900, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(230);
  display();
  
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
