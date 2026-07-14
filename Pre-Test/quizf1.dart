void showReport({
  required Map<String, int> scores,
  int passLine = 60
  }) 
{
  int passCount = 0;
  for (var entry in scores.entries) {
    String result;
    if (entry.value >= passLine) {
      result = "ผ่าน";
      passCount++;
    } else {
      result = "ไม่ผ่าน";
    }
    print("วิชา ${entry.key} ได้ ${entry.value} → $result");
  }
  print("จำนวนวิชาที่ผ่าน: $passCount");
}

void main() {
  Map<String, int> scores = {
    "Dart": 80,
    "Python": 55,
    "Database": 70,
    "Math": 40
  };
  String? remark;
  showReport(
    scores: scores
  );
  print("หมายเหตุ: ${remark ?? "ไม่มีหมายเหตุ"}");
}