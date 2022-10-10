void setup()
{
  size(1000,1000);
  background(#d6e6f2);//先定义一个有颜色的background，这个作品是按照《百老汇爵士乐》的结构创作的

}

void draw()
{

}

void mousePressed(){
  for(int i=0;i<9;i++){
    int b = (int)random(1000);
    rect(0,b,1000,20);
    fill(#fefaec);
    //随机生成横线
  }
   for(int i=0;i<9;i++){
    int a = (int)random(1000);
    rect(a,0,20,1000);
    fill(#fefaec);
    //随机生成竖线
  }
     for(int i=0;i<15;i++){
    int c = (int)random(100);
    int d = (int)random(100);   
    int e = (int)random(1000 );
    int f = (int)random(1000);
    rect(e,f,c,d);
    
    fill(#b693fe);
    //随机生成rect
  }
       for(int i=0;i<8;i++){
    int c = (int)random(200);
    int e = (int)random(1000);
    int f = (int)random(1000);
    square(e,f,c);
    
    fill(#ff7e67);
    //随机生成squre
  }
         for(int i=0;i<8;i++){
    int c = (int)random(100);
    int e = (int)random(1000);
    int f = (int)random(1000);
    square(e,f,c);
    
    fill(#dcedc2);
    //随机生成squre
  }
  saveFrame();
}
