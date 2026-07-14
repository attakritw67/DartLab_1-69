import 'dart:async';
// Future จำลองการดึงข้อมูล
Future<Map<String, dynamic>> fetchProfile(int userId) async {
  // หน่วงเวลา 2 วิ
  await Future.delayed(Duration(seconds: 2));
  // ตรวจสอบ error
  if (userId <= 0) {
    throw Exception("Invalid user id");
  }
  // คืนค่า
  return {
    "id": userId,
    "name": "Mark"
  };
}

// Stream ส่งข้อความแจ้งเตือน
Stream<String> notify() async* {
  yield "New message";
  await Future.delayed(Duration(seconds: 1));
  yield "Your order is ready";
  await Future.delayed(Duration(seconds: 1));
  yield "Thank you";
}

void main() async {
  // กรณีสำเร็จ
  try {
    var profile = await fetchProfile(1);
    print(profile);
  }

  catch(e) {
    print("Error: $e");
  }

  finally {
    print("Success case finished");
  }
  print("----------------");
  // กรณีพัง
  try {
    var profile = await fetchProfile(0);
    print(profile);
  }

  catch(e) {
    print("Error: $e");
  }

  finally {
    print("Error case finished");

  }

  print("----------------");
  // รับค่า Stream
  await for (String msg in notify()) {

    print(msg);

  }
}