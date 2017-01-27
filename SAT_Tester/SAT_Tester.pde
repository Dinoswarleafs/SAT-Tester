Question question;

void setup() {
  background(0);
   size(1000, 1000);
   surface.setResizable(true);
   question = new Question();
}
s
void draw() {
   question.display();
  }