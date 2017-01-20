class Button {  
color c;
float xPos, yPos;
float bLength, bWidth;

 Button() {
  color c = color(100);
  xPos = width/2;
  yPos = height/2;
  bLength = 40; 
  bWidth = 20;
 }
 
 Button(float tColor, float txPos, float tyPos, float tLength, float tWidth) {
  color c = color(tColor);
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
    println("lll");
    fill(c + 20);
  }
  else {
    fill(c);
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