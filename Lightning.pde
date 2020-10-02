int endX;
int endY;
int startX;
int startY;
void setup() {
  size(1000,1000);
  background(10,10,10);
  strokeWeight(5);
  startX=width/2;
  startY=0;
  endX=width/2;
  endY=0;
}
  
void draw() {
  stroke((float)(256*Math.random()),(float)(256*Math.random()),(float)(256*Math.random()),(float)(256*Math.random()));
  while(endY<=height) {
    endX=(int)(startX+(18*Math.random())-9);
    endY=(int)(startY+(9*Math.random()));
    line(startX,startY,endX,endY);
    startX=endX;
    startY=endY;
  }
}
void mousePressed() {
  strokeWeight((float)(Math.random()*5));
  startX=(width/4)+(int)((width/2)*Math.random());
  startY=0;
  endX=width/2;
  endY=0;
}
void keyPressed() {
  if(key==32) {
      background(10,10,10);
  }
}

//v1.0.1: added ability to clear screen, made the lightning be able to start in the center 50% of the width
