void setup () {
  int n= 42;
  boolean p = true;
  for (int i = 2; i < n; i = i+1){
  if (n % i ==0) {
    p=false;
  }
  }
  println(p);
}
