void setup() {
  size(800, 600);
  //frameRate(2);
  background(0);
}

void draw()
{
  for (int i=1; i<=60; i++) {
    stroke(random(255), random(120), random(180));
    line(width/i, height/i, random(width), random(height));
  }
}

