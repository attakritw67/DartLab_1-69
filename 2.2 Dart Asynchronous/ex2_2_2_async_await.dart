Future<void> loadData() async {
  await Future.delayed(Duration(seconds: 3));
  print("2. complete");
}

void main() async {
  print("1. Start");

  await loadData();

  print("3. End");
}