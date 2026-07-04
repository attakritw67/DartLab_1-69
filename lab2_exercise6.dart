void greet(String name){
  print("Hello My name is, $name!");
}

void multiply(int a,int b)=> print("Multiply result is: ${a*b}");

calculateArea(int w,int h){
  print("Square area is : ${w*h}");
  print("Triangle area is : ${0.5*w*h}");
  print("Cylender area is : ${3.14*w*w*h}");
}

void main(){
  greet('Attakrit Wongkaewphothong');
  multiply(3,4);
  calculateArea(6,7);
}