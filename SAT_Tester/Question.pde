
class Question {
Button[] button;
 
  Question(){   
    DeclareButtons();
   
  }
  
   void DeclareButtons() {     
    button = new Button[5];
    String[] text = new String[5];
    
    for (int i = 0; i < 5; i++) {
     button[i] = new Button(); 
    }
    
    for (int i = 1; i < 5; i++) {
     button[i].setXPos(width*1.2/9);
     button[i].setYPos(height*(1.75*i+1)/9);
    }
    
    for (int i = 0; i < 5; i++) {
     text[i] = "REEEEEEEEEEEEEEEEEEEEEEEEEE434343EEEEEEEEEEEEEEE7536-9752-7956-236579236yt084 g8cyg78rg680rgfg48y60fvg4-68fv4fv408tfgat8yfv8t0V7t8awvF60y846gbvy843vby8fby8gyb8934b9gu"; 
    }
    
    for (int i = 1; i < 5; i++) {
     float tempX = width*1.65/9;
     float tempY = height*(1.75*i+.65)/9;
     println(tempX);
     println((width/2 - tempX) + width/2);
     textAlign(LEFT);
     fill(200);
     text(text[i], tempX, tempY, (width/2 - tempX) + width/2, tempY); 
    }
       
    for (Button button : button) {
      button.setColor(255);
      button.setDiameter(40);
    }
    button[0].setText("1");
    button[0].setXPos(width*.8/9);
    button[0].setYPos((height*1.25+1)/9);
    button[0].setHighlight(false);
    
    button[1].setText("A");  
    button[2].setText("B");  
    button[3].setText("C");
    button[4].setText("D");

    
    for (Button button : button) {
      button.highlight();
      button.display();
    }      
     
    }
  
}