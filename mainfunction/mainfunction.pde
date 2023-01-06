import controlP5.*;
import g4p_controls.*;
import geomerative.*;
RFont font;
//P3D&P2D can't display properly in macos newversion, here I find a way to deal with it. 
//import com.jogamp.opengl.GLProfile;
//{
//  GLProfile.initSingleton();
//}
//But it may casue a little bug.
//It may make windows4(musicviz) visble at first,
//and you're not able to exit it. 
//But it's not a big deal. 
//There is a easy solution that you open window4 again by clicking button4 and exit it after that.


void setup(){
  size(800,600);
  background(#E6E6FA);
  //UI();
  fill(#87CEFA);
  textAlign(CENTER, TOP);
  textSize(64);
  text("Welcome to DesignWizard", width/2, 90);
  
  createGUI();
  RG.init(this);
  // create a new font, you have to use a ttf (True Type Font) RFont font = new RFont("chunkfive.ttf", fontSize, CENTER); // Alternative for size and alignment
  font = new RFont("FreeSans.ttf");


}



void draw(){


}
