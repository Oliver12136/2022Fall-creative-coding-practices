int textsize = 500;
color PGRAPHICS_COLOR = color(0);
int drawSpeed = 200;
//void win_draw11(PApplet appc, GWinData data){
String words;
PGraphics pg;
Boolean Typo_dot =true; 
Boolean Typo_pixel =false;
Boolean Typo_illusion =false;

//}
public void win_draw11(PApplet appc, GWinData data) { //_CODE_:window1:276956:
  appc.noStroke();
    appc.background(#E6E6FA);
    appc.fill(GCScheme.GOLD_SCHEME);
    appc.textAlign(CENTER, TOP);
    appc.textSize(24);
    appc.text("Welcome to Typography function! ", 960,20);

if(Typo_pixel == false && Typo_dot == true && Typo_illusion == false){
    pg = createGraphics(1920, 1080, JAVA2D);

 
  

 pg.beginDraw();
  pg.textSize(textsize);
pg.textAlign(CENTER, CENTER);
 pg.fill(PGRAPHICS_COLOR);
 pg.text(words, 960, 400);
  pg.endDraw();
  for (int a = 0; a<60; a++) {
    for (int i=0; i<drawSpeed; i++) {
      // pick a random coordinate
      int x = (int) random(1920);
      int y = (int) random(1080);
      // check if the coordinate is inside the text (in the offscreen PGraphics)
      boolean insideText = (pg.get(x, y) == PGRAPHICS_COLOR);
      // if it is indeed, then draw a shape in the main screen
      if (insideText) {
        // switch based on the current draw mode (move through them by clicking the mouse)
        // each drawing mode has custom settings (stroke, fill, shape, rotation)
        appc.pushMatrix();
        appc.translate(x, y);
        float er = random(5, 45);
        color ec = color(random(360), 100, 100);
        appc.stroke(0);
        appc.fill(ec);
       appc.ellipse(0, 0, er, er);
        appc.popMatrix();
} //_CODE_:window1:276956:
    }
    }
  }
  
  
  
  
  
  if(Typo_pixel == true && Typo_dot == false && Typo_illusion == false){
      pg = createGraphics(1920, 1080, JAVA2D);
    pg.beginDraw();
  pg.textSize(textsize);
  pg.textAlign(CENTER, CENTER);
  pg.fill(PGRAPHICS_COLOR);
  pg.text(words, 960, 400);
  pg.endDraw();
  for (int a = 0; a<100; a++) {
    for (int i=0; i<drawSpeed; i++) {
      // pick a random coordinate
      int x = (int) random(1920);
      int y = (int) random(1080);
      // check if the coordinate is inside the text (in the offscreen PGraphics)
      boolean insideText = (pg.get(x, y) == PGRAPHICS_COLOR);
      // if it is indeed, then draw a shape in the main screen
      if (insideText) {
        // switch based on the current draw mode (move through them by clicking the mouse)
        // each drawing mode has custom settings (stroke, fill, shape, rotation)
        appc.pushMatrix();
        appc.translate(x, y);
        float rw = random(1, 20);
        //float rr = random(TWO_PI);
        color rc = color(random(0,255), random(0, 100), random(20, 230));
        appc.stroke(0);
        appc.fill(rc);
        //appc.rotate(rr);
        appc.rect(0, 0, rw, rw);
        appc.popMatrix();
  
  
      }
      }
    }
  }
  
  
  if(Typo_pixel == false && Typo_dot == false && Typo_illusion == true){
      pg = createGraphics(1920, 1080, JAVA2D);
    pg.beginDraw();
  pg.textSize(textsize);
  pg.textAlign(CENTER, CENTER);
  pg.fill(PGRAPHICS_COLOR);
  pg.text(words, 960, 400);
  pg.endDraw();
  for (int a = 0; a<40; a++) {
    for (int i=0; i<drawSpeed; i++) {
      // pick a random coordinate
      int x = (int) random(1920);
      int y = (int) random(1080);
      // check if the coordinate is inside the text (in the offscreen PGraphics)
      boolean insideText = (pg.get(x, y) == PGRAPHICS_COLOR);
      // if it is indeed, then draw a shape in the main screen
      if (insideText) {
        // switch based on the current draw mode (move through them by clicking the mouse)
        // each drawing mode has custom settings (stroke, fill, shape, rotation)
        appc.pushMatrix();
        appc.translate(x, y);
        float rw = random(1, 20);
        float rr = random(TWO_PI);
        color rc = color(random(0,255), random(0, 100), random(20, 230));
        appc.stroke(0);
        appc.fill(rc);
        appc.rotate(rr);
        appc.rect(0, 0, rw, rw);
           float er = random(5, 20);
        color ec = color(random(360), 100, 100);
        appc.stroke(0);
        appc.fill(ec);
       appc.ellipse(0, 0, er, er);
       float td = random(3, 10);
        float tr = random(TWO_PI);
        color tc = color(random(255), 100, random(255));
        appc.noStroke();
        appc.fill(tc);
        appc.rotate(tr);
        appc.triangle(0, -td, -td, td, td, td);
        appc.fill(color(random(255),random(255),random(255)));
        appc.line(0,0,rw,rw);
        appc.popMatrix();
  
  
      }
      }
    }
  }
  
  
}
