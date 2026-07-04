void main(){
  String? middleName;
  String city = "Nakhon sawan";
  int middleNamelenght = middleName?.length ?? 0;
  print("Middle Name lenght: $middleNamelenght");
  print("City lenght: ${city.length}");
  print("Middle Name before assignment: $middleName");

  middleName ??= 'N/A';
  print("Middle Name after assignment: $middleName");

  middleName ??= 'SukoThai';
 print("Middle Name secound assignment: $middleName");

}