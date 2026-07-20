void vatRate() {
  final double vat = 0.07;
  print('อัตราภาษี (vatRate): $vat');
}
void main() {
  final String shopName = 'Dart Cafe';
  print('ร้าน: $shopName');
  vatRate();
  print('---');
  categories();
  print('---');
  calTotal(55, 2, 10);

  String? coupon;
  print('ความยาวคูปอง: ${coupon?.length ?? 0}');
  print('คูปองหลังกำหนดค่า: ${coupon ??= "No-Coupon"}');
}

void categories() {
  Map<String, int> menu = {
    'ลาเต้': 55,
    'เค้ก': 35,
    'น้ำเปล่า': 7,
    'ข้าวผัด': 60,
  };

  print('หมวดเมนู: [เครื่องดื่ม, ของคาว, ของหวาน]');
  print('จำนวนเมนูทั้งหมด: ${menu.length}');
  print('ราคาลาเต้: ${menu['ลาเต้']} บาท');
  print('---');

  print('เมนูราคาตั้งแต่ 50 บาทขึ้นไป:');
  for (var item in menu.entries) {
    if (item.value >= 50) {
      print('${item.key} : ${item.value} บาท');
    }
  }
}

void calTotal(int price, int qty, double discount) {
  const double vat = 0.07;
  double total = (price * qty) * (1 + vat);
  double totalDis = ((price * qty) - discount) * (1 + vat);
  print('ยอดสุทธิ (ไม่มีส่วนลด): $total บาท');
  print('ยอดสุทธิ (ส่วนลด $discount บาท): $totalDis บาท');
  print('---');
}