import 'dart:async';
Future<String> downloadFile(String name) async {
  await Future.delayed(Duration(seconds: 2));
  if(name.isEmpty) {
    throw Exception("File name is empty");
  }
  return "Download $name complete";

}
Stream<int> progress() async* {
  yield 25;
  await Future.delayed(Duration(seconds: 1));
  yield 50;
  await Future.delayed(Duration(seconds: 1));
  yield 75;
  await Future.delayed(Duration(seconds: 1));
  yield 100;
}

void main() async {
  try {
    String result = await downloadFile("test.txt");
    print(result);
  }
  catch(e) {
    print("Error: $e");
  }
  finally {
    print("Success process finished");
  }
  print("----------------");
  // กรณี error
  
  try {
    String result = await downloadFile("");
    print(result);
  }
  catch(e) {
    print("Error: $e");
  }

  finally {
    print("Error process finished");
  }
  print("----------------");
  // รับค่าจาก Stream
  await for(int percent in progress()) {
    print("โหลดแล้ว $percent%");
  }
}