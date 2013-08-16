float theta;
float theta2;

void A_Tspin()
{
  frameRate(20);
  //  background(255);
  background(r, g, b);
  if (chb==1) 
  { 
    r+=5;
    g=0;
  }
  else
  {  
    r= r+5;
    g= g+5;
  }
  if (r>255 && chb==1) 
  {
    chb =0;
  }
  if (g>255 && chb==0) 
  {
    chb =1;
  }  
  //println(chb);

  fill(0);

  //////
  translate(width/2, height/2);  // Translate to the center
  rotate(theta);                // Rotate by theta
  textAlign(CENTER);  
  textSize(random(30, 64));    
  text(message + lines[0], 0, 0);  




  //println( XXX+YYY+ZZZ);
  if (  XXX+YYY+ZZZ > 0) {
    theta -= 0.3;
  }
  else {
    theta += 0.3;
  }
}

void A_pop()
{  
  frameRate(10);

  background(255, 225, 55);
  fill(XXX);


  if ( true ) {
    background( 200+(XXX+YYY)*10, (XXX+YYY)*2, (XXX+YYY)*2);
    fill(255);
  }
  image(imga, 0, 0);
  image(imgb, 0, 400);
  textSize(random(30, 64));
  text(message + lines[0], random(0, 600), height/4 + random(50, 300));
}

void A_runrun()
{
  textAlign(LEFT);
  background(255,225,0);
  fill(255,0,0);
  noStroke();
  for(int i = 0; i < 16; i++){ 
    for(int j= 0;j < 12; j++){
      //圓心座標與滑鼠座標兩點間的距離
//      float D = sqrt(sq(i*50+25 - XXX*50) + sq(j*50+25 - YYY*50));
      float D = XXX +YYY*50;
      ellipse(i*50+25,j*50+25,D*0.2,D*0.2);
      
    }
  }
  fill(0);
  frameRate(30);
  textSize(random(60, 60+YYY));
  if ( XXX < 0) {
    x -=10;
    if (x<0) {
      x = 0;
    }
  }
  else {
    x += 10;
    if (x>600-100 ) {
      x = 600-100;
    }
  } 
  text(message+lines[0], x, 250);
  text(message+lines[1], width/2+100-x, 250+200);
}


void A_5spin()
{
  background(255);
  
  if(ZZZ>7)
  {
tint(255, 90);  // Apply transparency without changing color
  image(img, 0, 0);
  }
  else
  {
tint(255, 255);  // Apply transparency without changing color
  image(img, 0, 0);
   
  }
  
  frameRate(20);
  fill(0);
  int fi=0;
  textFont(f[ (int)random(0, 10) ]);
  pushMatrix();    
  translate(width/2, height/2);  // Translate to the center
  rotate(theta);                // Rotate by theta
  textAlign(CENTER);  
  textSize(random(30, 64));    
  text(lines[0], 0, 0);  
  popMatrix();

  textFont(f[ (int)random(0, 10) ]);
  float ts = random(30, 64);
  pushMatrix();
  translate(200, 100);

  textAlign(CENTER);
  textSize(ts);   
  text(lines[1], 0, 0);  
  popMatrix();

  textFont(f[ (int)random(0, 10) ]);
  pushMatrix();
  translate(200, 500);
  rotate(theta);
  textAlign(CENTER);
  textSize(ts);   
  text(lines[2], 0, 0);  
  popMatrix();

  textFont(f[ (int)random(0, 10) ]);
  pushMatrix();
  translate(600, 500);
  rotate(theta);
  textAlign(CENTER);
  textSize(ts);   
  text(lines[3], 0, 0);  
  popMatrix();

  textFont(f[  (int)random(0, 10)  ]);
  pushMatrix();
  translate(600, 100);
  rotate(theta2);
  textAlign(CENTER);
  textSize(ts);   
  text(lines[4], 0, 0);  
  popMatrix();


  if (  mouseX > width/2 ) {
    theta -= 0.3;  
    theta2 -= 0.6;
  }
  else {
    theta += 0.3;  
    theta2 -= 0.6;
  }
}

