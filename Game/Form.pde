// Base class for all forms (windows/scenes etc)

class Form {
  
  ArrayList<Component> components = new ArrayList<Component>();
  
  
  public Form() {
    // constructor
  }
  
  public void click() {
    for (Component c : components)
      c.click();
  }
  
  public void draw() {
    background(40);
    for (Component c : components)
      c.draw();
  }
  
  void keyPressed() {
    
  }
  
  
}

class Game extends Form {
  
  GameBox gb;
  public Game() {
    gb = new GameBox();
    
  }
  
  public void draw() {
    super.draw();
    gb.draw();
  }
  
  void keyPressed() {
    gb.keyPressed();
  }
  
  
}
