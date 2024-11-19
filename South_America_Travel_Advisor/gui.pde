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
  
  else if(pageOn == "info2") {
    pageOn = "info3";
  }
  
  else if(pageOn == "info3") {
    pageOn = "info4";
  }
  
  else if(pageOn == "info4") {
    pageOn = "info5";
  }

  

} //_CODE_:Next:342455:

public void PreviousButtonClicked(GButton source, GEvent event) { //_CODE_:Previous:223227:
  if(pageOn == "info1") {
    pageOn = "start";
  }
  
  if(pageOn == "info2") {
    pageOn = "info1";
  }
  
  if(pageOn == "info3") {
    pageOn = "info2";
  }
  
  if(pageOn == "info4") {
    pageOn = "info3";
  }
  
  if(pageOn == "info5") {
    pageOn = "info4";
  }
  
  if(pageOn == "final") {
    pageOn = "info5";
  }
  
} //_CODE_:Previous:223227:

public void XButtonClicked(GButton source, GEvent event) { //_CODE_:X:848310:
  pageOn = "start";
} //_CODE_:X:848310:

public void TransportationTypeClicked(GDropList source, GEvent event) { //_CODE_:TransportationType:818380:
  vehicleChosen = TransportationType.getSelectedText();
  
  if (vehicleChosen.equals ("van")) {
    vehicleAtuse = van; 
  }
  
  if (vehicleChosen.equals ("minivan")) {
    vehicleAtuse = minivan; 
  }
  
  if (vehicleChosen.equals ("car")) {
    vehicleAtuse = car; 
  }
  
  if (vehicleChosen.equals ("bus")) {
    vehicleAtuse = bus; 
  }
  
  if (vehicleChosen.equals ("train")) {
    vehicleAtuse = train; 
  }
  println(vehicleAtuse);

} //_CODE_:TransportationType:818380:

public void StartingLocationClicked(GDropList source, GEvent event) { //_CODE_:StartingLocation:860803:
  stateChosen = StartingLocation.getSelectedText();
} //_CODE_:StartingLocation:860803:

public void EndingLocationClicked(GDropList source, GEvent event) { //_CODE_:EndingLocation:592370:
  countryChosen = EndingLocation.getSelectedText();
} //_CODE_:EndingLocation:592370:

public void NumOfTravelersClicked(GDropList source, GEvent event) { //_CODE_:NumOfTravelers:591845:
  numOfTrav = int(NumOfTravelers.getSelectedText());
  println(numOfTrav);
} //_CODE_:NumOfTravelers:591845:

public void StartYearClicked(GDropList source, GEvent event) { //_CODE_:StartYear:473003:
  vStartYear = StartYear.getSelectedText();
  
  if(vStartYear != null && vStartMonth != null && vStartDay != null) {
    startTripDate = (vStartYear+"-"+vStartMonth+"-"+vStartDay);
    print(startTripDate);
  }
  
} //_CODE_:StartYear:473003:

public void StartMonthClicked(GDropList source, GEvent event) { //_CODE_:StartMonth:925594:
  vStartMonth = StartMonth.getSelectedText();
  
  if(vStartYear != null && vStartMonth != null && vStartDay != null) {
    startTripDate = (vStartYear+"-"+vStartMonth+"-"+vStartDay);
    print(startTripDate);
  }
  
} //_CODE_:StartMonth:925594:

public void StartDayClicked(GDropList source, GEvent event) { //_CODE_:StartDay:923299:
  vStartDay = StartDay.getSelectedText();
  
  if(vStartYear != null && vStartMonth != null && vStartDay != null) {
    startTripDate = (vStartYear+"-"+vStartMonth+"-"+vStartDay);
    print(startTripDate);
  }
  
} //_CODE_:StartDay:923299:

public void EndYearClicked(GDropList source, GEvent event) { //_CODE_:EndYear:516209:
  vEndYear = EndYear.getSelectedText();
  
  if(vEndYear != null && vEndMonth != null && vEndDay != null) {
    endTripDate = (vEndYear+"-"+vEndMonth+"-"+vEndDay);  
    print(endTripDate);
  }
  
} //_CODE_:EndYear:516209:

public void EndMonthClicked(GDropList source, GEvent event) { //_CODE_:EndMonth:405891:
  vEndMonth = EndMonth.getSelectedText();
  
  if(vEndYear != null && vEndMonth != null && vEndDay != null) {
    endTripDate = (vEndYear+"-"+vEndMonth+"-"+vEndDay);  
    print(endTripDate);
  }
  
} //_CODE_:EndMonth:405891:

public void EndDayClicked(GDropList source, GEvent event) { //_CODE_:EndDay:717898:
  vEndDay = EndDay.getSelectedText();
  
  if(vEndYear != null | vEndMonth != null | vEndDay != null) {
    endTripDate = (vEndYear+"-"+vEndMonth+"-"+vEndDay);  
    print(endTripDate);
  }
  
} //_CODE_:EndDay:717898:

public void AirlinesClicked(GDropList source, GEvent event) { //_CODE_:Airlines:456921:
  airlineChosen = Airlines.getSelectedText();
} //_CODE_:Airlines:456921:

public void TravLess12Clicked(GDropList source, GEvent event) { //_CODE_:TravLess12:769362:
  numOfTravUnder12 = int(TravLess12.getSelectedText());
} //_CODE_:TravLess12:769362:

public void TravUnder2Clicked(GDropList source, GEvent event) { //_CODE_:TravUnder2:321795:
  numOfTravUnder2 = int(TravUnder2.getSelectedText());
} //_CODE_:TravUnder2:321795:



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
  TransportationType = new GDropList(this, 100, 165, 347, 141, 2, 10);
  TransportationType.setItems(loadStrings("list_818380"), 0);
  TransportationType.addEventHandler(this, "TransportationTypeClicked");
  StartingLocation = new GDropList(this, 100, 250, 222, 360, 3, 10);
  StartingLocation.setItems(loadStrings("list_860803"), 0);
  StartingLocation.addEventHandler(this, "StartingLocationClicked");
  EndingLocation = new GDropList(this, 700, 250, 222, 360, 3, 10);
  EndingLocation.setItems(loadStrings("list_592370"), 0);
  EndingLocation.addEventHandler(this, "EndingLocationClicked");
  NumOfTravelers = new GDropList(this, 100, 130, 250, 138, 2, 10);
  NumOfTravelers.setItems(loadStrings("list_591845"), 0);
  NumOfTravelers.addEventHandler(this, "NumOfTravelersClicked");
  StartYear = new GDropList(this, 100, 450, 111, 168, 2, 10);
  StartYear.setItems(loadStrings("list_473003"), 0);
  StartYear.addEventHandler(this, "StartYearClicked");
  StartMonth = new GDropList(this, 220, 450, 111, 168, 2, 10);
  StartMonth.setItems(loadStrings("list_925594"), 0);
  StartMonth.addEventHandler(this, "StartMonthClicked");
  StartDay = new GDropList(this, 340, 450, 111, 168, 2, 10);
  StartDay.setItems(loadStrings("list_923299"), 0);
  StartDay.addEventHandler(this, "StartDayClicked");
  EndYear = new GDropList(this, 700, 450, 111, 168, 2, 10);
  EndYear.setItems(loadStrings("list_516209"), 0);
  EndYear.addEventHandler(this, "EndYearClicked");
  EndMonth = new GDropList(this, 820, 450, 111, 168, 2, 10);
  EndMonth.setItems(loadStrings("list_405891"), 0);
  EndMonth.addEventHandler(this, "EndMonthClicked");
  EndDay = new GDropList(this, 940, 450, 111, 168, 2, 10);
  EndDay.setItems(loadStrings("list_717898"), 0);
  EndDay.addEventHandler(this, "EndDayClicked");
  Airlines = new GDropList(this, 100, 135, 155, 168, 2, 10);
  Airlines.setItems(loadStrings("list_456921"), 0);
  Airlines.addEventHandler(this, "AirlinesClicked");
  TravLess12 = new GDropList(this, 100, 280, 250, 184, 3, 10);
  TravLess12.setItems(loadStrings("list_769362"), 0);
  TravLess12.addEventHandler(this, "TravLess12Clicked");
  TravUnder2 = new GDropList(this, 100, 430, 250, 184, 3, 10);
  TravUnder2.setItems(loadStrings("list_321795"), 0);
  TravUnder2.addEventHandler(this, "TravUnder2Clicked");
}

// Variable declarations 
// autogenerated do not edit
GButton Start; 
GButton About; 
GButton Finish; 
GButton Next; 
GButton Previous; 
GButton X; 
GDropList TransportationType; 
GDropList StartingLocation; 
GDropList EndingLocation; 
GDropList NumOfTravelers; 
GDropList StartYear; 
GDropList StartMonth; 
GDropList StartDay; 
GDropList EndYear; 
GDropList EndMonth; 
GDropList EndDay; 
GDropList Airlines; 
GDropList TravLess12; 
GDropList TravUnder2; 
