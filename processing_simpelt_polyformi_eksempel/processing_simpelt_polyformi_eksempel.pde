//Forklar hvad er polymorfi. Hvad menes med polymorfe referencer? 
//Hvad er overloading (polymorfe metoder). Eksemplificer med kode eksempler.

//Eksempel på polymorfi
Figur c = new Cirkel();
Figur f = new Firkant();

void setup() {
  size(640, 360);
  background(204);
  noLoop();
}

void draw() {
  c.tegn();
  f.tegn();
}

class Figur {
  public float x, y, radius;
  public int h, w, c;

  Figur() {
    radius = 40;
    x = width*0.25;
    y = height*0.5;
  }

  void tegn() {
    ellipse(x, y, radius*2, radius*2);
  }
}


class Cirkel extends Figur {
  Cirkel() {
    c = color(255, 0, 0);
    x = 70;
    y = 70;
  }

  public void tegn() {
    ellipse(x, y, radius*2, radius*2);
  }
}


class Firkant extends Figur {

  Firkant() {
    c = color(255, 0, 0);
    h = 20;
    w = 20;
  }

  public void tegn() {
    fill(c);
    rect(x, y, h, w);
  }
}
