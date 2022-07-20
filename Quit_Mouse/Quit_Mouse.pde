//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color blue =  #1E33B7, green =#56FA88, resetButtonColour = #FFFFFF, buttonFill;//Not Night Mode Friendly Colours
//
void setup() 
{
  size (500,500);
  //
  //Population
  int centerX = width/2;
  int centerY = height/2;
  int centeringButtonWidth = width*1/4;
  int centeringButtonHeight = height*1/4;
  quitButtonX = centerX - centeringButtonWidth;
  quitButtonY = centerY - centeringButtonHeight; 
  quitButtonWidth = width*1/2;
  quitButtonHeight = height*1/2;
  //
} //End setup()
//
void draw() 
{
  //Hover-over 
  if(mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) {
    buttonFill = blue;
  } else {
    buttonFill = green ;
  }//End Hover-over
  fill (buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill (resetButtonColour);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formila, mouse buttond 
  //println("X-Value",quitButtonX,"\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value",quitButtonY,"\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
} //End draw
//
void keyPressed() {
  if (key =='q' || key=='Q') exit();
}// End keyPressed
//
void mousePressed() {
  if( mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) exit();
  //
}// End mousePressed
//
//End MAIN program
