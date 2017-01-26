class Button{

boolean isHighlight;
float bColor;
float xPos, yPos;
float bDiameter;
PFont bFont;
String bText;

 Button() {
  isHighlight = true;   
  bColor = 100;
  xPos = width/2;
  yPos = height/2;
  bDiameter = 100;
  bText = "_";
 }
 
 Button(float tColor, float txPos, float tyPos, float tDiameter) {
  isHighlight = true;   
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bDiameter = tDiameter;
 }

 Button(float tColor, float txPos, float tyPos, float tDiameter, String tText) {
  isHighlight = true;  
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bDiameter = tDiameter;
  bText = tText;
 }
 
 public void setColor(float tColor){
   this.bColor = tColor;
 }
 
 public void setXPos(float txPos){
  this.xPos = txPos; 
 }
 
 public void setYPos(float tyPos){
  this.yPos = tyPos; 
 }
 
 public void setDiameter(float tDiameter){
  this.bDiameter = tDiameter; 
 }
 
 public void setText(String tText){
  this.bText = tText; 
 }
 
 public void setHighlight(boolean tHighlight){
  this.isHighlight = tHighlight; 
 }
 
 void display() {
 ellipse(xPos, yPos, bDiameter, bDiameter);
 bFont = createFont("Times New Roman", bDiameter/1.75); 
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 if ( bText != null && !bText.isEmpty() )
 text (bText, xPos, yPos + bDiameter/5);
 }
 
 
 void display(String tText) {
 bText = tText;
 ellipse(xPos, yPos, bDiameter, bDiameter);
 bFont = createFont("Times New Roman", bDiameter/1.75);  
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 text (bText, xPos, yPos + bDiameter/5);
 }
 
 void highlight(){
  if (overCircle() == true && isHighlight == true) {
    fill(bColor + 60);
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
boolean isHighlight;  
float bColor;
float xPos, yPos;
float bLength, bWidth;
PFont bFont;
String bText;

 ButtonRect() {
  isHighlight = true;
  bColor = 100;
  xPos = width/2;
  yPos = height/2;
  bLength = 40; 
  bWidth = 20;
 }
 
 ButtonRect(float tColor, float txPos, float tyPos, float tLength, float tWidth) {
  isHighlight = true;
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bLength = tLength; 
  bWidth = tWidth;
 }
 
 ButtonRect(float tColor, float txPos, float tyPos, float tLength, float tWidth, String tText) {
  isHighlight = true;
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bLength = tLength; 
  bWidth = tWidth;
  bText = tText;
 }
 
  public void setColor(float tColor){
   this.bColor = tColor;
 }
 
 public void setXPos(float txPos){
  this.xPos = txPos; 
 }
 
 public void setYPos(float tyPos){
  this.yPos = tyPos; 
 }
 
 public void setLength(float tLength){
  this.bLength = tLength; 
 }
 
 public void setWidth(float tWidth){
  this.bWidth = tWidth;   
 }
 
 public void setText(String tText){
  this.bText = tText; 
 }
 
 public void setHighlight(boolean tHighlight){
  this.isHighlight = tHighlight; 
 }
 
 void display() {
 rectMode(CENTER);
 rect(xPos, yPos, bLength, bWidth);
 bFont = createFont("Times New Roman", bLength*bWidth/2.25);  
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
 bFont = createFont("Times New Roman", bLength*bWidth/2.25); 
 fill(0);
 textFont(bFont);
 textAlign(CENTER);
 text (bText, xPos, yPos + yPos/2);
 }
 
 void highlight(){
  if (overRect() == true && isHighlight == true) {
    fill(bColor + 20);
  }
  else {
    fill(bColor);
  }
 }
 
 

boolean overRect() {
  if (mouseX >= xPos-bLength/2 && mouseX <= xPos+bLength/2 && 
      mouseY >= yPos-bWidth/2 && mouseY <= yPos+bWidth/2) {
    return true;
  } else {
    return false;
  } 
// https://www.processing.org/examples/button.html
}   
  
  
}