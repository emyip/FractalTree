private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,500);    
  noLoop(); 
} 
public void draw() 
{   
  //tree
float red = 0;
float b = 255.0;
for (int i = 0; i<500; i++){
  stroke(red,0,b,200);
  line(0,i,800,i);
  b= b-(255/500.0);
  red=red+(255/500.0);
}
      int purple, blue, pink;
    int randomColor = (int)(Math.random()*3);
    pink = color(255, 192, 203);
    blue = color(18, 105, 199);
    purple = color(156, 81, 182);
    if (randomColor == 0) {
     stroke(pink);
    } else if (randomColor == 1) {
     stroke(blue);
    } else {
     stroke(purple);
    }  
  line(320,500,320,400);   
  drawBranches(320,400,120,3*Math.PI/2);  
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1)+y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2)+y );
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  
  if(branchLength>smallestBranch)
  {
        int purple, blue, pink;
    int randomColor = (int)(Math.random()*3);
    pink = color(255, 192, 203);
    blue = color(18, 105, 199);
    purple = color(156, 81, 182);
    if (randomColor == 0) {
     stroke(pink);
    } else if (randomColor == 1) {
      stroke(blue);
    } else {
      stroke(purple);
    }
  drawBranches(endX1, endY1, branchLength-1, angle1-50);
  drawBranches(endX2, endY2, branchLength-1, angle2+50);
  }
}
  
