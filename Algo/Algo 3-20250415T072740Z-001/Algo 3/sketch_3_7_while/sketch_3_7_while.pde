// 3.7 While
void setup () {
  int i = 1; // incrément
  int n = 0; // stock la somme
  while (i<=100) {
    println(i+"+"+n+ "est égale à : ");
    n = n + i;
    println(n);
    i++;
  }
}
