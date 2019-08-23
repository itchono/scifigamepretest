import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;

class Component {
  
  
  
  
  public void click() {
  }
  
  public void draw() {
  }
  void keyPressed() {
    
  }
}

class GameBox extends Component {
  
 Surface s;
 Unit player;
  
  public GameBox() {
   s = new Surface();
   player = new Unit();
  }
  
  public void draw() {
    physics.step();
    s.draw();
    player.draw();
    
  }
  
  void keyPressed() {
   
     if (keyCode == 32)
       player.body.applyForce(new Vec2(0, 50000), player.body.getWorldCenter());
       
     if (keyCode == 65)
       player.body.applyForce(new Vec2(-5000, 0), player.body.getWorldCenter());
       
     if (keyCode == 68)
      player.body.applyForce(new Vec2(5000, 0), player.body.getWorldCenter());
       
     if (keyCode == 81)
        player.body.applyForce(new Vec2(-5000, 0), (player.body.getWorldCenter().add(new Vec2(0, physics.scalarPixelsToWorld(150)))));
        
     if (keyCode == 69)
          player.body.applyForce(new Vec2(5000, 0), (player.body.getWorldCenter().add(new Vec2(0, physics.scalarPixelsToWorld(150)))));
       
  }
  
  
    
}
