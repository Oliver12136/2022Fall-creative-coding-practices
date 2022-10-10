void setup() {
  size(1920,1080);
  background(#aa96da);
}
void draw() {
 
  variableEllipse(mouseX,mouseY,pmouseX,pmouseY);//用光标移动生成变化的圆
  int a = (int) random(4);
   if (a==1) {
       fill(#a8d8ea);
    } else if (a==2) {
    fill(#fcbad3);
    } else if(a==3) {
    fill(#ffffd2);
    }//随机三种颜色，感觉写的有点拧巴
    saveFrame();
}



void variableEllipse(int x, int y, int z, int p) {
  float speed = abs(x-z) + abs(y-p);//随机化圆的大小，这一部分不是很好，因为本来打算是用鼠标完成（请看另一个demo）
  strokeWeight(0);//设置圆的描边厚度为0px
  ellipse(x, y, speed, speed);
}

 
