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

  //when clicking on start button you go to page 1
  pageOn = "info1";
} //_CODE_:Start:973162:

public void AboutButtonClicked(GButton source, GEvent event) { //_CODE_:About:951909:

  //when clicking on about button you go to about page
  pageOn = "about";
} //_CODE_:About:951909:

public void FinishButtonClicked(GButton source, GEvent event) { //_CODE_:Finish:287929:

  //when clicking on finish button you go the end screen
  pageOn = "final";
} //_CODE_:Finish:287929:

public void NextButtonClicked(GButton source, GEvent event) { //_CODE_:Next:342455:

  //if you press next button, if your currently on page 1 you got to page 2
  if(pageOn == "info1") {
    pageOn = "info2";
  }
  
  //if you press next button, if your currently on page 2 you got to page 3
  
  else if(pageOn == "info2") {
    pageOn = "info3";
    
  }
  
  //if you press next button, if your currently on page 3 you got to page 4
  
  else if(pageOn == "info3") {
    pageOn = "info4";
  }
  
  //if you press next button, if your currently on page 4 you got to page 5
  
  else if(pageOn == "info4") {
    pageOn = "info5";
  }

  

} //_CODE_:Next:342455:

public void PreviousButtonClicked(GButton source, GEvent event) { //_CODE_:Previous:223227:

  //if you press previous button, if your currently on page 1 you go back to page back
  if(pageOn == "info1") {
    pageOn = "start";
  }
  
  //if you press previous button, if your currently on page 2 you go back to page 1
  
  if(pageOn == "info2") {
    pageOn = "info1";
  }
  
  //if you press previous button, if your currently on page 3 you go back to page back 2
  
  if(pageOn == "info3") {
    pageOn = "info2";
  }
  
  //if you press previous button, if your currently on page 4 you go back to page back 3
  
  if(pageOn == "info4") {
    pageOn = "info3";
  }
  
  //if you press previous button, if your currently on page 5 you go back to page back 4
  
  if(pageOn == "info5") {
    pageOn = "info4";
  }
  
  //if you press previous button, if your currently on final page you go back to page back 5
  
  if(pageOn == "final") {
    pageOn = "info5";
  }
  
} //_CODE_:Previous:223227:

public void XButtonClicked(GButton source, GEvent event) { //_CODE_:X:848310:

  //if you press the x button the about page, it get rids of the 
  pageOn = "start";
} //_CODE_:X:848310:

public void TransportationTypeClicked(GDropList source, GEvent event) { //_CODE_:TransportationType:818380:

  //grabs the text for the TransportationType dropbox
  vehicleChosen = TransportationType.getSelectedText();
  
  // If they choose van then, van attributes show on display screen
  if (vehicleChosen.equals ("van")) {
    vehicleAtuse = van; 
  }
  
  // If they choose minivan then, minivan attributes show on display screen
  if (vehicleChosen.equals ("minivan")) {
    vehicleAtuse = minivan; 
  }
  
  // If they choose car then, car attributes show on display screen
  if (vehicleChosen.equals ("car")) {
    vehicleAtuse = car; 
  }
  
  // If they choose bus then, bus attributes show on display screen
  if (vehicleChosen.equals ("bus")) {
    vehicleAtuse = bus; 
  }
  
  // If they choose train then, train attributes show on display screen
  if (vehicleChosen.equals ("train")) {
    vehicleAtuse = train; 
  }
  
  // If they choose none then, no attributes show on display screen
  if(vehicleChosen.equals ("TransportationType:")) {
    vehicleAtuse = null;
    vehicleChosen = null;
  }

} //_CODE_:TransportationType:818380:

public void StartingLocationClicked(GDropList source, GEvent event) { //_CODE_:StartingLocation:860803:

  //grabs the text for the startinglocation dropbox
  stateChosen = StartingLocation.getSelectedText();
} //_CODE_:StartingLocation:860803:

public void EndingLocationClicked(GDropList source, GEvent event) { //_CODE_:EndingLocation:592370:

  //grabs the text for the endinglocation dropbox
  countryChosen = EndingLocation.getSelectedText();
} //_CODE_:EndingLocation:592370:

public void NumOfTravelersClicked(GDropList source, GEvent event) { //_CODE_:NumOfTravelers:591845:

  //grabs the text for the NumOfTravelers dropbox
  numOfTrav = int(NumOfTravelers.getSelectedText());
} //_CODE_:NumOfTravelers:591845:

public void StartYearClicked(GDropList source, GEvent event) { //_CODE_:StartYear:473003:

  //grabs the text for the StartYear dropbox
  vStartYear = StartYear.getSelectedText();
  
  //Creates the date, if start year,month and day has been chosen
  if(vStartYear != null && vStartMonth != null && vStartDay != null) {
    startTripDate = (vStartYear+"-"+vStartMonth+"-"+vStartDay);
  }
  
} //_CODE_:StartYear:473003:

public void StartMonthClicked(GDropList source, GEvent event) { //_CODE_:StartMonth:925594:

  //grabs the text for the StartMonth dropbox
  vStartMonth = StartMonth.getSelectedText();
  
  //Creates the date, if start year,month and day has been chosen
  if(vStartYear != null && vStartMonth != null && vStartDay != null) {
    startTripDate = (vStartYear+"-"+vStartMonth+"-"+vStartDay);
    print(startTripDate);
  }
  
} //_CODE_:StartMonth:925594:

public void StartDayClicked(GDropList source, GEvent event) { //_CODE_:StartDay:923299:

  //grabs the text for the StartDay dropbox
  vStartDay = StartDay.getSelectedText();
  
  //Creates the date, if start year,month and day has been chosen
  if(vStartYear != null && vStartMonth != null && vStartDay != null) {
    startTripDate = (vStartYear+"-"+vStartMonth+"-"+vStartDay);
    print(startTripDate);
  }
  
} //_CODE_:StartDay:923299:

public void EndYearClicked(GDropList source, GEvent event) { //_CODE_:EndYear:516209:

  //grabs the text for the EndYear dropbox
  vEndYear = EndYear.getSelectedText();
  
  //Creates the date, if end year,month and day has been chosen
  if(vEndYear != null && vEndMonth != null && vEndDay != null) {
    endTripDate = (vEndYear+"-"+vEndMonth+"-"+vEndDay);  
    print(endTripDate);
  }
  
} //_CODE_:EndYear:516209:

public void EndMonthClicked(GDropList source, GEvent event) { //_CODE_:EndMonth:405891:

  //grabs the text for the EndMonth dropbox
  vEndMonth = EndMonth.getSelectedText();
  
  //Creates the date, if end year,month and day has been chosen
  if(vEndYear != null && vEndMonth != null && vEndDay != null) {
    endTripDate = (vEndYear+"-"+vEndMonth+"-"+vEndDay);  
    print(endTripDate);
  }
  
} //_CODE_:EndMonth:405891:

public void EndDayClicked(GDropList source, GEvent event) { //_CODE_:EndDay:717898:

  //grabs the text for the EndDay dropbox
  vEndDay = EndDay.getSelectedText();
  
  //Creates the date, if end year,month and day has been chosen
  if(vEndYear != null && vEndMonth != null && vEndDay != null) {
    endTripDate = (vEndYear+"-"+vEndMonth+"-"+vEndDay);  
    print(endTripDate);
  }
  
} //_CODE_:EndDay:717898:

public void AirlinesClicked(GDropList source, GEvent event) { //_CODE_:Airlines:456921:
  
  //grabs the text for the airlines dropbox
  airlineChosen = Airlines.getSelectedText();
  
  // If they choose Razzberry Airlines then, Razzberry Airlines attributes show on display screen
  if(airlineChosen.equals ("Raspberry Airlines")) {
    airlineAtuse = airline1;
  }
  
  // If they choose Gold Airlines then, Gold Airlines attributes show on display screen
  if(airlineChosen.equals ("Gold Airlines")) {
    airlineAtuse = airline2;
  }
  
  // If they choose Diamond Airlines then, Diamond Airlines attributes show on display screen
  if(airlineChosen.equals ("Diamond Airlines")) {
    airlineAtuse = airline3;
  }
} //_CODE_:Airlines:456921:

public void TravLess12Clicked(GDropList source, GEvent event) { //_CODE_:TravLess12:769362:
  
  //grabs the text for the travless12 dropbox
  numOfTravUnder12 = int(TravLess12.getSelectedText());
} //_CODE_:TravLess12:769362:

public void TravUnder2Clicked(GDropList source, GEvent event) { //_CODE_:TravUnder2:321795:

  //grabs the text for the travunder2 dropbox
  numOfTravUnder2 = int(TravUnder2.getSelectedText());
} //_CODE_:TravUnder2:321795:

public void Itinerary1Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary1:483667:

  //grabs the text for the ininerary dropbox
  itinerary1 = Itinerary1.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary1.equals ( "Chosen Itinerary:" )) {
    itin1Picked = false;
    itinerary1 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin1Picked = true;
  }
} //_CODE_:Itinerary1:483667:

public void Itinerary2Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary2:210311:

  //grabs the text for the ininerary dropbox
  itinerary2 = Itinerary2.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary2.equals ( "Chosen Itinerary:" )) {
    itin2Picked = false;
    itinerary2 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin2Picked = true;
  }
} //_CODE_:Itinerary2:210311:

public void Itinerary3Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary3:591154:

  //grabs the text for the ininerary dropbox
  itinerary3 = Itinerary3.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary3.equals ( "Chosen Itinerary:" )) {
    itin3Picked = false;
    itinerary3 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin3Picked = true;
  }
} //_CODE_:Itinerary3:591154:

public void Itinerary4Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary4:747335:

  //grabs the text for the ininerary dropbox
  itinerary4 = Itinerary4.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary4.equals ( "Chosen Itinerary:" )) {
    itin4Picked = false;
    itinerary4 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin4Picked = true;
  }
} //_CODE_:Itinerary4:747335:

public void Itinerary5Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary5:484035:

  //grabs the text for the ininerary dropbox
  itinerary5 = Itinerary5.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary5.equals ( "Chosen Itinerary:" )) {
    itin5Picked = false;
    itinerary5 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin5Picked = true;
  }
} //_CODE_:Itinerary5:484035:

public void Itinerary6Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary6:642544:

  //grabs the text for the ininerary dropbox
  itinerary6 = Itinerary6.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary6.equals ( "Chosen Itinerary:" )) {
    itin6Picked = false;
    itinerary6 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin6Picked = true;
  }
} //_CODE_:Itinerary6:642544:

public void Itinerary7Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary7:459172:

  //grabs the text for the ininerary dropbox
  itinerary7 = Itinerary7.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary7.equals ( "Chosen Itinerary:" )) {
    itin7Picked = false;
    itinerary7 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin7Picked = true;
  }
} //_CODE_:Itinerary7:459172:

public void Itinerary8Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary8:828640:

  //grabs the text for the ininerary dropbox
  itinerary8 = Itinerary8.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary8.equals ( "Chosen Itinerary:" )) {
    itin8Picked = false;
    itinerary8 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin8Picked = true;
  }
} //_CODE_:Itinerary8:828640:

public void Itinerary9Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary9:627520:

  //grabs the text for the ininerary dropbox
  itinerary9 = Itinerary9.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary9.equals ( "Chosen Itinerary:" )) {
    itin9Picked = false;
    itinerary9 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin9Picked = true;
  }
} //_CODE_:Itinerary9:627520:

public void Itinerary10Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary10:626244:

  //grabs the text for the ininerary dropbox
  itinerary10 = Itinerary10.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary10.equals ( "Chosen Itinerary:" )) {
    itin10Picked = false;
    itinerary10 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin10Picked = true;
  }
} //_CODE_:Itinerary10:626244:

public void Itinerary11Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary11:719164:

  //grabs the text for the ininerary dropbox
  itinerary11 = Itinerary11.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary11.equals ( "Chosen Itinerary:" )) {
    itin11Picked = false;
    itinerary11 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin11Picked = true;
  }
} //_CODE_:Itinerary11:719164:

public void Itinerary12Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary12:811019:

  //grabs the text for the ininerary dropbox
  itinerary12 = Itinerary12.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary12.equals ( "Chosen Itinerary:" )) {
    itin12Picked = false;
    itinerary12 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin12Picked = true;
  }
} //_CODE_:Itinerary12:811019:

public void Itinerary13Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary13:519033:

  //grabs the text for the ininerary dropbox
  itinerary13 = Itinerary13.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary13.equals ( "Chosen Itinerary:" )) {
    itin13Picked = false;
    itinerary13 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin13Picked = true;
  }
} //_CODE_:Itinerary13:519033:

public void Itinerary14Clicked(GDropList source, GEvent event) { //_CODE_:Itinerary14:861829:

  //grabs the text for the ininerary dropbox
  itinerary14 = Itinerary14.getSelectedText();
  
  //if they choose none, then no itinerary attributes appear
  if(itinerary14.equals ( "Chosen Itinerary:" )) {
    itin14Picked = false;
    itinerary14 = null;
  }
  
  //if they choose something, then that itinerary attributes appear
  else {
    itin14Picked = true;
  }
} //_CODE_:Itinerary14:861829:



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
  StartingLocation = new GDropList(this, 100, 250, 222, 200, 3, 10);
  StartingLocation.setItems(loadStrings("list_860803"), 0);
  StartingLocation.addEventHandler(this, "StartingLocationClicked");
  EndingLocation = new GDropList(this, 700, 250, 222, 200, 3, 10);
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
  Itinerary1 = new GDropList(this, 100, 115, 222, 60, 2, 10);
  Itinerary1.setItems(loadStrings("list_483667"), 0);
  Itinerary1.addEventHandler(this, "Itinerary1Clicked");
  Itinerary2 = new GDropList(this, 650, 115, 222, 60, 2, 10);
  Itinerary2.setItems(loadStrings("list_210311"), 0);
  Itinerary2.addEventHandler(this, "Itinerary2Clicked");
  Itinerary3 = new GDropList(this, 100, 185, 222, 60, 2, 10);
  Itinerary3.setItems(loadStrings("list_591154"), 0);
  Itinerary3.addEventHandler(this, "Itinerary3Clicked");
  Itinerary4 = new GDropList(this, 650, 185, 222, 60, 2, 10);
  Itinerary4.setItems(loadStrings("list_747335"), 0);
  Itinerary4.addEventHandler(this, "Itinerary4Clicked");
  Itinerary5 = new GDropList(this, 100, 255, 222, 60, 2, 10);
  Itinerary5.setItems(loadStrings("list_484035"), 0);
  Itinerary5.addEventHandler(this, "Itinerary5Clicked");
  Itinerary6 = new GDropList(this, 650, 255, 222, 60, 2, 10);
  Itinerary6.setItems(loadStrings("list_642544"), 0);
  Itinerary6.addEventHandler(this, "Itinerary6Clicked");
  Itinerary7 = new GDropList(this, 100, 325, 222, 60, 2, 10);
  Itinerary7.setItems(loadStrings("list_459172"), 0);
  Itinerary7.addEventHandler(this, "Itinerary7Clicked");
  Itinerary8 = new GDropList(this, 650, 325, 222, 60, 2, 10);
  Itinerary8.setItems(loadStrings("list_828640"), 0);
  Itinerary8.addEventHandler(this, "Itinerary8Clicked");
  Itinerary9 = new GDropList(this, 100, 395, 222, 60, 2, 10);
  Itinerary9.setItems(loadStrings("list_627520"), 0);
  Itinerary9.addEventHandler(this, "Itinerary9Clicked");
  Itinerary10 = new GDropList(this, 650, 395, 222, 60, 2, 10);
  Itinerary10.setItems(loadStrings("list_626244"), 0);
  Itinerary10.addEventHandler(this, "Itinerary10Clicked");
  Itinerary11 = new GDropList(this, 100, 465, 222, 60, 2, 10);
  Itinerary11.setItems(loadStrings("list_719164"), 0);
  Itinerary11.addEventHandler(this, "Itinerary11Clicked");
  Itinerary12 = new GDropList(this, 650, 465, 222, 60, 2, 10);
  Itinerary12.setItems(loadStrings("list_811019"), 0);
  Itinerary12.addEventHandler(this, "Itinerary12Clicked");
  Itinerary13 = new GDropList(this, 100, 535, 222, 60, 2, 10);
  Itinerary13.setItems(loadStrings("list_519033"), 0);
  Itinerary13.addEventHandler(this, "Itinerary13Clicked");
  Itinerary14 = new GDropList(this, 650, 535, 222, 60, 2, 10);
  Itinerary14.setItems(loadStrings("list_861829"), 0);
  Itinerary14.addEventHandler(this, "Itinerary14Clicked");
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
GDropList Itinerary1; 
GDropList Itinerary2; 
GDropList Itinerary3; 
GDropList Itinerary4; 
GDropList Itinerary5; 
GDropList Itinerary6; 
GDropList Itinerary7; 
GDropList Itinerary8; 
GDropList Itinerary9; 
GDropList Itinerary10; 
GDropList Itinerary11; 
GDropList Itinerary12; 
GDropList Itinerary13; 
GDropList Itinerary14; 
