PImage img1;
PImage img2;
void setup() {
  size(842,595);
  img1 = loadImage("animated Optical Illusion.png");
  img2=loadImage("life goes on.png");
}

void draw() {
  image(img1, 0,0);  
  image(img2,mouseX,mouseY);    //图片坐标设为鼠标坐标
  saveFrame();


}
