# simpelt_processing_polyformi_eksempel
## Polymorfi

Polymorfi er et nøglebegreb i mange programmeringssprog - objekt-orienterede såvel som sprog i andre paradigmer. Vi introducerer her polymorfibegrebet på det generelle plan.
Polymorfi betyder mangeformethed.

## Eksempel

Med polymorfi kan variable og parametre referere til objekter af mere end én type
```
//Eksempel på polymorfi
Figur c = new Cirkel();
Figur f = new Firkant();
```
Polymorfi hentyder til situationen hvor variable og parametre kan 'have eller antage forskellige former'. I programmeringssprog ser vi ofte, at polymorfe parametre afleder polymorfe procedurerer eller funktioner. Vi taler således om, at det er procedurerne eller funktionerne, der er polymorfe. Det simple polymorfibegreb på variable (og parametre) ses altså at kunne inducere et mere avanceret polymorfibegreb på procedurer og funktioner (og metoder).

```
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
```



