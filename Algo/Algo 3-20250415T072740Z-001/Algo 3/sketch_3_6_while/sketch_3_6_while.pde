// 3.6
void setup () {
  plusgrandcarreinferieur (15);
  plusgrandcarreinferieur (25);
  plusgrandcarreinferieur (321);
}
void plusgrandcarreinferieur (int n) {
  int i = 1;
  while (i*i<n) { 
    i++; 
  }
  i--;
  // println(n, i*i);
  println(" le plus grand carre inferieur de " +n+ "est : " +i*i);
}
