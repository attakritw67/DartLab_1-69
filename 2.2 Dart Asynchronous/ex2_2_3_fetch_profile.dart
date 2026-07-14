Future<Map<String, dynamic>> fetchProfile(int userId) async {
  await Future.delayed(Duration(seconds: 2));

  if (userId <= 0) {
    throw Exception("userId Incorrect");
  }

  return {
    "id": userId,
    "name": "Attakrit Wongkaewphothong",
    "age": 20,
    "email": "attakritw67@nu.ac.th",
  };
}

void main() async {
  for (int id in [1, -1]) {
    print("--- Test userId = $id ---");
    print("Loading...");

    try {
      Map<String, dynamic> profile = await fetchProfile(id);
      print("Name: ${profile["name"]}");
      print("Age: ${profile["age"]}");
      print("Email: ${profile["email"]}");
    } catch (e) {
      print("Error: $e");
    } finally {
      print("End");
    }
  }
}