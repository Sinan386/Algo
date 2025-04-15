// 3.5 sans random
void setup () {
  pluspetitcarresuperieur (45);
  pluspetitcarresuperieur (984);
  pluspetitcarresuperieur (321);
}
void pluspetitcarresuperieur (int n) {
  int i = 1;
  while (i*i<n) {
    i++;
  }
  // println(n, i*i);
  println(" le plus petit carre superieur de " +n+ "est : " +i*i);
}
