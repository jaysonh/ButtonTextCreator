PGraphics   buffer;
int fontSize=40;
PFont font;

int xPadding = 2;
int yPadding = 2;
void setup()
{
  size(100,100);
  font = createFont("Helvetica",fontSize*2);
}

void makeTextLabel(String txt)
{
  textFont(font, fontSize);
  int w = (int)textWidth(txt) + xPadding * 2;
  int h = (int)textAscent()   + yPadding * 2;
  buffer=createGraphics(w,h);
  buffer.beginDraw();
  buffer.background(0);
  buffer.fill(255);
  buffer.textFont(font,fontSize);
  buffer.text(txt, xPadding,buffer.height-yPadding);
  buffer.endDraw();
  
  buffer.save(txt + ".jpg");
}
void draw()
{
   makeTextLabel("Hello");
    System.exit(0);
}
