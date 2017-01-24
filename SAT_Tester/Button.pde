class Button{

float bColor;
float xPos, yPos;
float bDiameter;
PFont bFont;
String bText;

 Button() {
  bColor = 100;
  xPos = width/2;
  yPos = height/2;
  bDiameter = 100;
  bFont = createFont("Times New Roman", bDiameter/1.75); 
  bText = "_";
 }
 
 Button(float tColor, float txPos, float tyPos, float tDiameter) {
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bDiameter = tDiameter;
  bFont = createFont("Times New Roman", bDiameter/1.75); 
 }

 Button(float tColor, float txPos, float tyPos, float tDiameter, String tText) {
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bDiameter = tDiameter;
  bFont = createFont("Times New Roman", bDiameter/1.75); 
  bText = tText;
 }
 
 
 void display() {
 ellipse(xPos, yPos, bDiameter, bDiameter);
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 if ( bText != null && !bText.isEmpty() )
 text (bText, xPos, yPos + bDiameter/5);
 }
 
 
 void display(String tText) {
 bText = tText;
 ellipse(xPos, yPos, bDiameter, bDiameter);
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 text (bText, xPos, yPos + bDiameter/5);
 }
 
 void highlight(){
  if (overCircle() == true) {
    fill(bColor + 20);
  }
  else {
    fill(bColor);
  }
 }
 
boolean overCircle() {
  float disX = xPos - mouseX;
  float disY = yPos - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < bDiameter/2 ) {
    return true;
  } else {
    return false;
  }
}

}

class ButtonRect {  
float bColor;
float xPos, yPos;
float bLength, bWidth;
PFont bFont;
String bText;

 ButtonRect() {
  bColor = 100;
  xPos = width/2;
  yPos = height/2;
  bLength = 40; 
  bWidth = 20;
  bFont = createFont("Times New Roman", bLength*bWidth/1.75); 
 }
 
 ButtonRect(float tColor, float txPos, float tyPos, float tLength, float tWidth) {
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bLength = tLength; 
  bWidth = tWidth;
  bFont = createFont("Times New Roman", (bLength+bWidth/2)/1.75); 
 }
 
 ButtonRect(float tColor, float txPos, float tyPos, float tLength, float tWidth, String tText) {
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bLength = tLength; 
  bWidth = tWidth;
  bText = tText;
  bFont = createFont("Times New Roman", (bLength+bWidth/2)/2.25); 
 }
 
 void display() {
 rectMode(CENTER);
 rect(xPos, yPos, bLength, bWidth);
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 if ( bText != null && !bText.isEmpty() )
 text (bText, xPos, yPos + yPos/25);
 }

 void display(String tText) {
 bText = tText;
 rectMode(CENTER);
 rect(xPos, yPos, bLength, bWidth);
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 text (bText, xPos, yPos + yPos/2);
 }
 
 void highlight(){
  if (overRect() == true) {
    fill(bColor + 20);
  }
  else {
    fill(bColor);
  }
 }
 
 

boolean overRect() {
  if (mouseX >= xPos && mouseX <= xPos+bLength && 
      mouseY >= yPos && mouseY <= yPos+bWidth) {
    return true;
  } else {
    return false;
  } 
// https://www.processing.org/examples/button.html
}   
  
  
}