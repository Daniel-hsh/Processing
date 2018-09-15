class Stream {
  ArrayList<Char> chars;
  int numChar, speed;

  //round --> arredondar 

  Stream(int tempX) {

    chars = new ArrayList<Char>();  
    numChar = round(random(10, 20));

    speed = round(random(18, 128));
    for (int y = 0; y < numChar * 20; y+=20) {
      chars.add(new Char(tempX, y));
    }
  }

  void update() {
    for (int i=0; i < chars.size (); i++) {
      //how we pick colors
      float alpha = map(i, 0, chars.size()-1, 50, 255);
      fill(0, 250, 80, alpha /*opacity*/ );
      if (i==chars.size()-1) fill(250, 255, 250);
      chars.get(i).show();

      //move characters
      if (frameCount % speed == 0) {
        chars.get(i).y += 50;

        //characters stays, if size-1 new char
        if (i==chars.size()-1) {
          chars.get(i).getRandomChar();
        } else {
          chars.get(i).theChar=chars.get(i+1).theChar;
        }
      }


      //change the character randomly
      if (random(1) < 0.01) {
        chars.get(i).getRandomChar();
      }
    }

    //this checks 
    if (chars.get(0).y > height) {
      for (int i=0; i < chars.size (); i++) {
        chars.get(i).y=((chars.size()-1)-i)*-20;
      }
    }
  }
}

