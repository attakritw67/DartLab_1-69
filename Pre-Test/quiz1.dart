void printreReceipt({required Map<String,double> item,double discount = 0}){
  double total = 0;
  for (var item in item.entries){
    print('${item.key} : ${item.value}');
    total += item.value;
  }

  print('Total: ${total}');
  double net = total - discount;
  print('Discount: ${discount}');
  print('Net price: ${net}');
}

void main(){
  Map<String,double> product = {  
    'Apple':15 ,'Orange':40,'Grape':50
  };
  printreReceipt(item:product,discount:30);

}