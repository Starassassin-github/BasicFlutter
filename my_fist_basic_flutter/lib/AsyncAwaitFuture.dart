Future <String> loginUser() async{
  // ดึงข้อมูล
  var user = await getUserFromDatabase();
  return "user: " + user;
}

// ข้อมูลที่จะได้ในอนาคต ต้องรอ 10 วินาที
Future <String> getUserFromDatabase(){
  return Future.delayed(Duration(seconds: 10),()=> "WatDha");
}

void main() async{
  print(await loginUser());
  print("do something");
  
}