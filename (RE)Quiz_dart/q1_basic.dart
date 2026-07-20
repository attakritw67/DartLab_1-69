void vatRate(){
  final double vat = 0.07;
  print('อัตราภาษี (vatRate):$vat');
}
void main (){
  final String shopName = 'Dart Cafe';
  print('ร้าน: $shopName');
  vatRate();
  print('---');
  categories();
  print('---');
  calTotal(55,2,10);
  String? coupun;
  print("ความยาวคูปอง: ${coupun?.length ?? 0}");
  print("คูปองหลังกำหนดค่า: ${coupun ??= "No-Coupon"}");
}
void categories(){
  Map<String,int>menu = {
    'ลาเต้':55,
    'เค้ก':35,
    'น้ำเปล่า':7,
    'ช้าวผัด':60
  };
  print('หมวดเมนู: [เครื่องดื่ม, ของคาว, ของหวาน]');
  print('จำนวนเมนูทั้งหมด: ${menu.length}');
  print('ราคาลาเต้: ${menu['ลาเต้']} บาท');
  print('---');
  print('เมนูราคาตั้งแต่ 50 บาทขึ้นไป:');
  for (var k in menu.entries){
    if (k.value >= 50){
      print(k);
    }

  }
}
void calTotal( int price,int qty,double discount){
  double total = (price*qty)*(1.07);
  double total_dis = ((price*qty) -discount)*(1.07);
  print('ยอดสุทธิ (ไม่มีส่วนลด): $total บาท');
  print('ยอดสุทธิ (ส่วนลด$discount): $total_dis บาท');
  print('---');
}