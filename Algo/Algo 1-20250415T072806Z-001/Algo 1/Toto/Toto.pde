int position = 0; // Départ
int d = 0; // Déplacement total

void setup () {

// Processing
walk(); // position +1 case N°1
jump(); // position +2 case N°3
jump(); // position +2 case N°5
jump(); // position +2 case N°7

println("Déplacement total: " + d);

float moyenne = (float)position/d;
println(" Moyenne: " + moyenne);

}
void walk () {
position = position +1;
d = d + 1;
println(position ,d );


}
void jump () {
position = position +2;
d = d + 1;
println(position ,d);


}

  

  
