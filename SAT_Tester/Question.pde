class Question {
Button[] button;
String[] text = new String[5];
PFont qFont;

  Question(){   
    
    for (int i = 0; i < 5; i++) {
     text[i] = "Missing Input"; 
    }   
    
  }
  
  Question(String tString){
    text[0] = tString;
    
    for (int i = 1; i < 5; i++) {
     text[i] = "Missing input";      
    }
  }
  
  Question(String tString1, String tString2, String tString3, String tString4) {
    text[1] = tString1;
    text[2] = tString2;
    text[3] = tString3;
    text[4] = tString4;    
  }
  
  Question(String tString, String tString1, String tString2, String tString3, String tString4) {
    text[0] = tString;
    text[1] = tString1;
    text[2] = tString2;
    text[3] = tString3;
    text[4] = tString4;    
  }
  
  public void setAll(String tString, String tString1, String tString2, String tString3, String tString4){
    text[0] = tString;
    text[1] = tString1;
    text[2] = tString2;
    text[3] = tString3;
    text[4] = tString4;  
  }
  
  public void setQuestion(String tString){
   text[0] = tString; 
  }
  
  public void setAnswers(String tString1, String tString2, String tString3, String tString4){
    text[1] = tString1;
    text[2] = tString2;
    text[3] = tString3;
    text[4] = tString4;  
  }
  
  public void setAnswer1(String tString){
   text[1] = tString; 
  }
  
  public void setAnswer2(String tString){
   text[2] = tString; 
  }
  
  public void setAnswer3(String tString){
   text[3] = tString; 
  }
  
  public void setAnswer4(String tString){
   text[4] = tString; 
  }
  
   public void display() {     
    button = new Button[5];
    
    for (int i = 0; i < 5; i++) {
     button[i] = new Button(); 
    }
    
    for (int i = 1; i < 5; i++) {
     button[i].setXPos(width*1.2/9);
     button[i].setYPos(height*(1.75*i+1)/9);
    }
    
    qFont = createFont("Times New Roman", 20);
        
    for (int i = 1; i < 5; i++) {
     float tempX = width*1.65/9;
     float tempY = height*(1.75*i+.85)/9;
     textFont(qFont);
     textAlign(LEFT);
     fill(200);
     text(text[i], tempX, tempY, (width/2 - tempX) + width/2, tempY); 
    }
       
    button[0].setText("1");
    button[0].setXPos(width*.8/9);
    button[0].setYPos((height*1.25+1)/9);
    button[0].setHighlight(false);
    
    float tempX = width*1.1/9;
    float tempY = (height*1.17)/9;
    
    text(text[0], tempX, tempY, (width/2 - tempX) + width/2, tempY);
    
    button[1].setText("A");  
    button[2].setText("B");  
    button[3].setText("C");
    button[4].setText("D");
    
    for (Button button : button) {
      button.setColor(200);
      button.setDiameter(40);
      button.highlight();
      button.display();
    }      
     
    }
  
}