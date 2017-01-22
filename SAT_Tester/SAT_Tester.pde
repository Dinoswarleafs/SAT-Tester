ButtonRect button;


void setup() {
  background(30);
   size(1000, 1000);
   surface.setResizable(true);
}

void draw() {
    button = new ButtonRect(200, width/5, height -  height/2, 200, 100, "A");
    button.highlight();
    button.display();
  }