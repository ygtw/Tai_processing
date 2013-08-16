import oscP5.*;
import netP5.*;
int XXX, YYY, ZZZ;

int x = 0;
int pkey=1;

PImage img;
PImage imga;
PImage imgb;

int r = 0;
int g = 0;
int b = 0;
int chb =0;

OscP5 oscP5;
NetAddress myRemoteLocation;
import ddf.minim.*;

Minim minim;
AudioPlayer player;
   
Timer timer;


PFont[] f = new PFont[10];
String message = "保庇 ";
String message2 = "Bobi OOO";
String message3 = "Bobi YYY";
String message4 = "Bobi QQQ";
String message5 = "Bobi UUU";
String pName="";
String[] lines= {
  "台灣", "B.B.ART", "台南" , "你老母" , "她阿姨" ,"Koong"
};

void setup() { 
  imga = loadImage("word.png");
  imgb = loadImage("word2.png");
  
  img = loadImage("bg.jpg");

noCursor();
  size(800, 600, P3D);
  int i=0;
  f[i++] = createFont("標楷體", 120, true);
  f[i++] = createFont("王漢宗中行書繁", 120, true);
  f[i++] = createFont("華康隸書體W7", 120, true);
  f[i++] = createFont("華康華綜體W5(P)", 120, true);
  f[i++] = createFont("Adobe 繁黑體 Std B", 120, true);
  f[i++] = createFont("王漢宗仿宋體一標準", 120, true);
  f[i++] = createFont("華康行楷體W5(P)", 120, true);
  f[i++] = createFont("FZZhunYuan-M02", 120, true);
  f[i++] = createFont("王漢宗波卡體一空陰", 120, true);
  f[i++] = createFont("華康POP1體W7", 120, true);
  textFont(f[0]);

  oscP5 = new OscP5(this, 12000);
  myRemoteLocation = new NetAddress("127.0.0.1", 12000);
  oscP5.plug(this, "test", "/accxyz");


 // println( lines);


  timer = new Timer(3000);
  timer.start();
  
  
  
  
    minim = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  player = minim.loadFile("remix(HQ)_final.mp3");
  
  // play the file
  player.play();
  
  
  
  
  
  
  
  
}
public void test(float x, float y, float z) {
  //  println("### plug event method. received a message /test.");
  //  println("  ints received: "+x+", "+y+", "+z);
  XXX = (int)x;
  YYY = (int)y;
  ZZZ = (int)z;
//     println(ZZZ);

}


void draw() { 
  if (timer.isFinished()) {
    //   println(pName.equals(lines[0]));
try
{
    lines = loadStrings("http://122.117.232.20/tai/server.php")[0].split("&") ;
}
 catch (Exception ex) {
            System.out.println("something wrong");
        }
finally
{}
    if (!pName.equals(lines[0]))
    {
      textFont(f[ (int)random(0, 10) ]);
    }

    pName = lines[0];



    timer.start();
  }  
  //    A_Tspin();
  //  A_Tspin();
  //  A_pop();
  //  A_runrun();
  //  triangle(30+XXX*5, 75, 58+YYY*5, 20, 86, 75+ZZZ*10);
  if (pkey==1)
  {
    A_Tspin();
  }
  else if (pkey ==2)
  {
    A_pop();
  }
  else if (pkey==3)
  {
    A_runrun();
  }
  else if (pkey==4)
  {
    A_5spin();
  }
}
void keyPressed()
{
  if (key=='1')
  {
    pkey=1;
  }
  else if (key =='2')
  {
    pkey=2;
  }
  else if (key=='3')
  {
    pkey=3;
  }
  else if (key=='4')
  {
    pkey=4;
  }
}

