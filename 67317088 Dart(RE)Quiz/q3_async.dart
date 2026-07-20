
Future<Map<String , dynamic>> fetchOrder (int order) async {
  await Future.delayed(Duration(seconds: 2));
  if(order <=0){
    throw Exception("รหัสคำสั่งซื้อไม่ถูกต้อง");
  }
  return {
    "id" : order,
    "menu" : "ลาเต้",
    "total" : 65.0
  };
}
Stream<String> trackOrder() async*{
  await Future.delayed(Duration(seconds: 1));
  print("สถานะ: รับออร์เดอร์แล้ว");

  await Future.delayed(Duration(seconds: 1));
  print("สถานะ: กำลังจัดทำ");

  await Future.delayed(Duration(seconds: 1));
  print("สถานะ: จัดส่งเรียบร้อย");
  print("ติดตามสถานะเสร็จสิ้น");
}
void main() async {
  print("เริ่มโหลดข้อมูล...");
  try{
    var order = await fetchOrder(7);
    print("ได้รับออร์เดอร์: $order");
  }catch (e){
    print("เกิดข้อผิดพลาด: $e");
  }finally{
    print("จบรายการ");
  }
  print("---");
  try{
    var order = await fetchOrder(0);
    print("ได้รับออร์เดอร์ : $order");
  }catch (e){
    print("เกิดข้อผิดพลาด: $e");
  }finally{
    print("จบรายการ");
  }
  print("---");
  await for(String i in trackOrder()){
    print(i);
  }
}