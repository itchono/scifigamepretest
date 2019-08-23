// Game thingy
  
  int state = 0; // used to determine window
 
   public Box2DProcessing physics;
   
  Form[] forms = new Form[10]; // adjust as needed for more forms
  
  public void setup() {
    size(1280 ,720);
    background(40);
    
   physics = new Box2DProcessing(this);
   physics.createWorld();
   physics.setGravity(0, -9.81);
    
    
    surface.setTitle("Scifi Game Dev");
    
    state = 0;
    forms[0] = new Game();
  }
  
  public void draw() {
    switch (state) {
      // add behaviour later
      
    }
    forms[state].draw();
    
  }
  
  void keyPressed() {
    forms[state].keyPressed();
    
  }
  
 
