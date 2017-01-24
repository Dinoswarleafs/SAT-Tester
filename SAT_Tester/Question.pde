Button[] button;

class Question {
 
  Question(){
    button = new Button[5];
    for (int i = 0; i < 5; i++) {
     button[i] = new Button(); 
    }
    for (Button button : button) {
      button.setColor(255);
      button.setDiameter(40);
    }
    button[0].setText("1");
    button[0].setXPos(width*2/9);
    button[0].setYPos(height*2/9);
    button[0].setHighlight(false);

    button[1].setText("A");
    button[1].setXPos(width*2.5/9);
    button[1].setYPos(height*3.5/9);
    
    button[2].setText("B");
    button[2].setXPos(width*2.5/9);
    button[2].setYPos(height/2);
    
    button[3].setText("C");
    button[3].setXPos(width*2.5/9);
    button[3].setYPos(height*5.5/9);
    
    button[4].setText("D");
    button[4].setXPos(width*2.5/9);
    button[4].setYPos(height*6.5/9);
    
    for (Button button : button) {
      button.highlight();
      button.display();
    }
        
  }
  
}