c1 = color(0);
color c2 = color (255,255,0);
void setup () {
  
  size(1000, 1000);
  background(0, 255, 0);
  
  soleil(900,50); //appel soleil
  soleil(50,50); //appel soleil
  mouton(50, 50); //appel du mouton
  mouton(300, 500); //appel du mouton
  
}
  void soleil(int x, int y) {
    
    fill(c2);
    circle(0+x,0+y,100);
    
}


void mouton(int x, int y) {
  fill (255);
  rect(50+x, 50+y, 420, 220);
  rect(472+x, 50+y, 220, 120);
  rect(70+x, 272+y, 40, 120);
  rect(180+x, 272+y, 40, 120);
  rect(290+x, 272+y, 40, 120);
  rect(400+x, 272+y, 40, 120);
  fill(c1);
  rect(452+x, 70+y, 40, 60);
  fill(c1);
  circle(550+x, 100+y, 20);
 
}
