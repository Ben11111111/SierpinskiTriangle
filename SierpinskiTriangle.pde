int a = 20;
public void setup()
{
size(400,400);
background(0);
noLoop();
}
public void draw()
{
background(0);
  sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

  a = (int) map(mouseX, 0, width, 5, 50);
  redraw();
  
}
public void sierpinski(int x, int y, int len) 
{
if( len <= a){
  triangle((float)x, (float)y,(float) x + len,(float) y,(float) x + len / 2, (float)y - len);
}
 else{
  sierpinski(x, y, len / 2); 
  sierpinski(x + len / 2, y, len / 2); 
  sierpinski(x + len / 4, y - len / 2, len / 2); 
  }
}
