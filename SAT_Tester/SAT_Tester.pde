Button button;
Button button1;
ButtonRect buttonrect;

void setup() {
   size(800,800); 
   button = new Button(200, 200, 200, 200);
   button1 = new Button(10, 600, 600, 200);
   buttonrect = new ButtonRect();
}

void draw() {
  button.highlight();
  button.display();
  button1.highlight(); 
  button1.display();
  buttonrect.highlight();
  buttonrect.display();
}