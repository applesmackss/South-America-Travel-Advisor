/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void StartButtonClicked(GButton source, GEvent event) { //_CODE_:Start:973162:
  pageOn = "info1";
} //_CODE_:Start:973162:

public void AboutButtonClicked(GButton source, GEvent event) { //_CODE_:About:951909:
  pageOn = "about";
} //_CODE_:About:951909:

public void FinishButtonClicked(GButton source, GEvent event) { //_CODE_:Finish:287929:
  pageOn = "final";
} //_CODE_:Finish:287929:

public void NextButtonClicked(GButton source, GEvent event) { //_CODE_:Next:342455:
  if(pageOn == "info1") {
    pageOn = "info2";
  }
  
} //_CODE_:Next:342455:

public void PreviousButtonClicked(GButton source, GEvent event) { //_CODE_:Previous:223227:
  if(pageOn == "info1") {
    pageOn = "start";
  }
  
  if(pageOn == "info2") {
    pageOn = "info1";
  }
  
  if(pageOn == "final") {
    pageOn = "info2";
  }
  
} //_CODE_:Previous:223227:

public void XButtonClicked(GButton source, GEvent event) { //_CODE_:X:848310:
  pageOn = "start";
} //_CODE_:X:848310:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Start = new GButton(this, 550, 450, 120, 60);
  Start.setText("Start Planning");
  Start.addEventHandler(this, "StartButtonClicked");
  About = new GButton(this, 550, 538, 120, 60);
  About.setText("About");
  About.addEventHandler(this, "AboutButtonClicked");
  Finish = new GButton(this, 1103, 655, 96, 44);
  Finish.setText("Finish");
  Finish.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Finish.addEventHandler(this, "FinishButtonClicked");
  Next = new GButton(this, 1103, 655, 96, 44);
  Next.setText("Next");
  Next.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Next.addEventHandler(this, "NextButtonClicked");
  Previous = new GButton(this, 0, 655, 96, 44);
  Previous.setText("Previous");
  Previous.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Previous.addEventHandler(this, "PreviousButtonClicked");
  X = new GButton(this, 845, 30, 52, 42);
  X.setText("X");
  X.setLocalColorScheme(GCScheme.RED_SCHEME);
  X.addEventHandler(this, "XButtonClicked");
}

// Variable declarations 
// autogenerated do not edit
GButton Start; 
GButton About; 
GButton Finish; 
GButton Next; 
GButton Previous; 
GButton X; 
