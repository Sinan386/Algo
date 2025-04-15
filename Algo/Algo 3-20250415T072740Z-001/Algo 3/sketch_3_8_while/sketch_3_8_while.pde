// 3.8 while
void setup () {
  int n = 45 ;
  while (n !=1) {
    print (n + ",");
    if (n % 2==0) { // n est paire
      n = n/2;
      //print(n +" " );
                   }
   else {
      n = n * 3 + 1; // n est impaire
      //print(n+ " ");
        }
     }
  print(n);
  }
