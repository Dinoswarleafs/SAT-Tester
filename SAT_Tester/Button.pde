class Button{

float bColor;
float xPos, yPos;
float bDiameter;

 Button() {
  bColor = 100;
  xPos = width/2;
  yPos = height/2;
  bDiameter = 40; 
 }
 
 Button(float tColor, float txPos, float tyPos, float tDiameter) {
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bDiameter = tDiameter; 
 }
 
 void display() {
 ellipse(xPos, yPos, bDiameter, bDiameter);
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

 ButtonRect() {
  bColor = 100;
  xPos = width/2;
  yPos = height/2;
  bLength = 40; 
  bWidth = 20;
 }
 
 ButtonRect(float tColor, float txPos, float tyPos, float tLength, float tWidth) {
  bColor = tColor;
  xPos = txPos;
  yPos = tyPos;
  bLength = tLength; 
  bWidth = tWidth;
 }
 
 void display() {
 rect(xPos, yPos, bLength, bWidth);
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