import java.util.Calendar;

//color palette
color tangerine = color(248, 178, 25);
color tangerineB = color (218, 136, 1);
color hotpink = color(235, 28, 108);
color hotpinkB = color(196, 2, 70);
color lime = color(202, 210, 37);
color limeB = color(162, 170, 7);
color turquoise = color(79, 204, 222);
color turquoiseB = color(62, 178, 202);
color lightpink = color(255, 145, 213);
color lightpinkB = color(215, 105, 173);
color medturq = color(61, 183, 197);
color medturqB = color(22, 115, 121);
color teal = color(37, 209, 166);
color tealB = color(4, 169, 126);
color purple = color(120, 131, 235);
color purpleB = color(102, 102, 204);
color purpleC = color(62, 62, 164);
color white = color(255, 255, 255);
color purple1 = color(120, 131, 235);
color purple2 = color(102, 102, 204);
color purple3 = color(156, 102, 195);

//create varible
float x, y;
float easing = 0.2;
float angle = 5.50;
boolean clear = false;
boolean circle =true;
boolean sticks= false;
int digit = 0;
float diameter = 70;
  int i=1;
  float currentDistance = 0;
  PImage sketch;

public void win_draw22(PApplet appc, GWinData data) { //_CODE_:window1:276956:


  if (i==1 || clear == true) {
    appc.background(#E6E6FA);
    i++;
    clear = false;
  }
  appc.fill(GCScheme.GOLD_SCHEME);
  appc.textAlign(CENTER, TOP);
  appc.textSize(24);
  appc.text("Welcome to Brush function! ", 960, 20);


if(circle==true&&sticks==false)




{
  appc.smooth();

  appc.noStroke();
  appc.cursor(CROSS);



  float targetX = appc.mouseX;
  float dx = (targetX-x) * easing;
  float targetY = appc.mouseY;
  float dy = (targetY-y) * easing;


  if (appc.mousePressed) {

    float x2 = x + dx;
    float y2 = y + dy;

    x = x2;
    y = y2;

    //draw the confetti
    float confettiDiameter = random(8, 25);
    float chance = random(1, 10);
    digit++;
    if (digit > 4) {
      digit = 0;
    }
    if (chance > 6) {
      float angle = random(0, HALF_PI);
      //delay(100);
      appc.pushMatrix();
      appc.translate(x, y);
      appc.rotate(angle);
      appc.noStroke();
      float xpos= random(-130, 10);
      float ypos= random(-130, 10);

      if (digit ==0) {

        appc.fill(hotpinkB);
        appc.ellipse(1 +xpos, 1 +ypos, confettiDiameter, confettiDiameter);
        appc.fill(hotpink);
        appc. ellipse(xpos, ypos, confettiDiameter, confettiDiameter);
      } else if (digit ==1) {

        appc.fill(purpleC);
        appc.ellipse(1 +xpos, 1 +ypos, confettiDiameter, confettiDiameter);
        appc.fill(purpleB);
        appc. ellipse(xpos, ypos, confettiDiameter, confettiDiameter);
      } else if (digit ==2) {

        appc.fill(medturqB);
        appc.ellipse(1 +xpos, 1 +ypos, confettiDiameter, confettiDiameter);
        appc.fill(medturq);
        appc. ellipse(xpos, ypos, confettiDiameter, confettiDiameter);
      } else if (digit ==3) {

        appc.fill(limeB);
        appc.ellipse(1 +xpos, 1 +ypos, confettiDiameter, confettiDiameter);
        appc.fill(lime);
        appc. ellipse(xpos, ypos, confettiDiameter, confettiDiameter);
      } else if (digit ==4) {

        appc.fill(purpleB);
        appc.ellipse(1 +xpos, 1 +ypos, confettiDiameter, confettiDiameter);
        appc.fill(purple);
        appc. ellipse(xpos, ypos, confettiDiameter, confettiDiameter);
      }
      appc.popMatrix();
    }

    // enable eraser
  } 
  else{
    x = targetX;
    y = targetY;
  }
  }

if(circle==false && sticks==true){

appc.smooth();

  appc.noStroke();
  appc.cursor(CROSS);
  float targetX = appc.mouseX;
  float dx = (targetX-x) * easing;
  float targetY = appc.mouseY;
  float dy = (targetY-y) * easing;
  
  if (mousePressed ) {
    
    float x2 = x + dx;
    float y2 = y + dy;
    float steps = 28;
    for (int i = 0; i <= steps; i += 1) {
      float t = i/steps;
      float cx = lerp(x, x2, t); //get fractional positions
      float cy = lerp(y, y2, t); //get fractional positions
     appc. pushMatrix();
      appc.translate (cx, cy);
      appc.rotate(angle);
      
      //Draw the ribbon
      
      appc.strokeCap(SQUARE);
      appc.strokeWeight(3);
      
      appc.stroke(purple1);
      appc.line(-50, 0, -30, 0);
      appc.line(30, 0, 50, 0);
     appc.line(-12, 0, 12, 0);
      
      appc.stroke(purple2);
      appc.line(-30, 0, -12, 0);
      appc.line(12, 0, 30, 0);
      
      appc.popMatrix();
    }
    x = x2;
    y = y2;
    
  // enable eraser 
  } 

  else {
    x = targetX;
    y = targetY;
  }
}

}



float clamp(float x, float low, float high) {
  if (x <= low) {
    return low;
  } else if (x >= high) {
    return high;
  }
  return x;
}
