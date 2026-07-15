void main() {
  print("1. Start");

  Future.delayed(Duration(seconds: 3), () => "2. Finish")
    .then((value) => print(value))
    .then((_) => print("3. End"));
}