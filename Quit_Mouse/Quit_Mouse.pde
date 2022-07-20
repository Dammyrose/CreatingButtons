//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
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
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  println("X-Value",quitButtonX,"\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  println("Y-Value",quitButtonY,"\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
} //End draw
//
void keyPressed() {
  if (key =='q' || key=='Q') exit();
}// End keyPressed
//
void mousePressed() {
}// End mousePressed
//
//End MAIN program
