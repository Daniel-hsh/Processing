PFont theFont;
ArrayList<Stream> streams;

Stream streamsss;
Char a;

void setup() {
  size(1366,768);
//  size(1280, 719, P2D);

  theFont = createFont("Arial Unicode MS", 20);
  textFont(theFont);
  textAlign(CENTER, TOP);

  println(Integer.parseInt("0030", 16));
  println(Integer.parseInt("3147", 16));

  //  a = new Char(width/2, height/2);
  //  a.getRandomChar();

  streams = new ArrayList<Stream>();

  for (int x=0; x < width; x+=20) {
    streams.add(new Stream(x));
  }
}

void draw() {
  background(#060F02);
  
  for (Stream s : streams) {
    s.update();
  }
  
//  saveFrame("out/mat_######.png")
}

