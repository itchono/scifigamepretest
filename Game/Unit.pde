import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;


class Unit {
    public Body body;
    int w, h;
    
    Unit() {
      BodyDef bd = new BodyDef();
      Vec2 centerOfScreen = new Vec2(width/2, height/2);
      bd.position.set(physics.coordPixelsToWorld(centerOfScreen));
      bd.linearDamping = 0.1;
      bd.angularDamping = 0.9;
      bd.type = BodyType.DYNAMIC;
      
      body = physics.createBody(bd);
      // step 1 body, step 2 shape, step 3 fixture
      
      w = 50;
      h = 100;
      
      PolygonShape ps = new PolygonShape();
      float bw = physics.scalarPixelsToWorld(w/2);
      float bh = physics.scalarPixelsToWorld(h/2);
      
      ps.setAsBox(bw, bh);

      
      FixtureDef fd = new FixtureDef();
      fd.shape = ps;
      
      fd.friction = 0.3;
      fd.restitution = 0.9;
      fd.density = 1;
      
      body.createFixture(fd);
      
    }
    
    public void draw() {
      Vec2 pos = physics.getBodyPixelCoord(body);
      float a = body.getAngle();
      
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(-a);
      fill(255,246,179);
      stroke(0);
      rectMode(CENTER);
      rect(0,0, w, h);
      popMatrix();
    }
    


}
