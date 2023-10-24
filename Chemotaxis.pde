class Bacteria
{
  int myX, myY, myXX, myYY,myColor;
  Bacteria() {//Bacteria(int c) {
    myX = 440;
    myY = 20;
    myXX = 20;
    myYY = 440;
    myColor = 0;
  }
  void bWalk()
  {
    myX= myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
    //myXX= myXX + (int)(Math.random()*7)-3;
    //myYY = myYY + (int)(Math.random()*7)-3;
  }
   void sWalk()
   {
    myXX= myXX + (int)(Math.random()*7)-3;
    myYY = myYY + (int)(Math.random()*7)-3;
   }
  void bShow()
  {
    if(myColor == 0){
    myColor = color(255,5,122);
    }
    fill(myColor);
    ellipse(myX, myY, 30, 30);
    ellipse(myX, myY, 30, 30);
    }
  void sShow()
  { 
    if(myColor == 0){
    myColor = color(5,115,255);
    }
    fill(myColor);
    ellipse(myXX, myYY, 30, 30);
    ellipse(myXX, myYY, 30, 30);
  }
//  void Color()
//  {
//    myColor = color(63,255,0);
//}}
} 

Bacteria bob;
Bacteria sue;
Bacteria [] group1 = {
  new Bacteria(),
  new Bacteria(),
  new Bacteria()
};
Bacteria [] group2 = {
  new Bacteria(),
  new Bacteria(),
  new Bacteria()
};

Bacteria [] othergroup1;
Bacteria [] othergroup2;
 void setup()
{
  size(500, 500);
  frameRate(85);
  bob = new Bacteria();
  sue = new Bacteria();
  othergroup1 = new Bacteria[70];
  for(int i = 0; i < othergroup1.length;i++){
    othergroup1[i] = new Bacteria ();
 }othergroup2 = new Bacteria[70];
  for(int i = 0; i < othergroup2.length;i++){
    othergroup2[i] = new Bacteria ();
  }
}
void draw()
{
  background(0);
  bob.bShow();
  bob.bWalk();
  group1[0].bWalk();
  group1[0].bShow();
  group1[1].bWalk();
  group1[1].bShow();
  group1[2].bWalk();
  group1[2].bShow();
  for(int i = 0; i< othergroup1.length;i++){
    othergroup1[i].bWalk();
    othergroup1[i].bShow();
 //    if(dist(othergroup1[i].myX,othergroup1[i].myY,othergroup2[i].myXX,othergroup2[i].myYY)<50){
 //    othergroup1[i].myColor = othergroup2[i].myColor = color(63,255,0);
 //}
}
  sue.sShow();
  sue.sWalk();
  group2[0].sWalk();
  group2[0].sShow();
  group2[1].sWalk();
  group2[1].sShow();
  group2[2].sWalk();
  group2[2].sShow();
  for(int i = 0; i< othergroup2.length;i++){
    othergroup2[i].sWalk();
    othergroup2[i].sShow();
    if(dist(othergroup1[i].myX,othergroup1[i].myY,othergroup2[i].myXX,othergroup2[i].myYY)<150){
      othergroup1[i].myColor = othergroup2[i].myColor = color(63,255,0);
   }
 }
}
