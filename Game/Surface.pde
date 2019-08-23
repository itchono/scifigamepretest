class Surface {
  // terrain
  
  ArrayList<Vec2> surface;
  
  Surface() {
    surface = new ArrayList<Vec2>();
    
    surface.add(new Vec2(width, 3*height/4));
    surface.add(new Vec2(width/2, height/2));
    surface.add(new Vec2(width/3, 3*height/4));
    surface.add(new Vec2(0, 3*height/4));
    
    
    ChainShape chain = new ChainShape();
    
    Vec2[] vertices = new Vec2[surface.size()];
    
    for (int i = 0; i < surface.size(); i++) {
      vertices[i] = physics.coordPixelsToWorld(surface.get(i));
      // ok so for reference, Box2D and Processing have different coord systems, so we must apply this transform
    }
    
    chain.createChain(vertices, surface.size());
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    Body body = physics.world.createBody(bd);
    
    body.createFixture(chain, 1);
  }
  
  void draw() {
    strokeWeight(1);
    fill(240);
    beginShape();
    for (Vec2 v: surface) {
      vertex(v.x,v.y);
    }
    vertex(0,height);
    vertex(width,height);
    endShape();
  }
  
}
