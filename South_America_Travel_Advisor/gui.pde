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
}

// Variable declarations 
// autogenerated do not edit
GButton Start; 
GButton About; 
