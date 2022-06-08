class FoodMenu{
  String name;
  String price;
  String img;

  FoodMenu(this.name,this.price,this.img);
  /**
   * // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500","assets/images/picture1.jpeg"),
    FoodMenu("กะเพราหมู", "80","assets/images/picture2.jpeg"),
    FoodMenu("ส้มตำ", "60","assets/images/picture3.jpeg"),
    FoodMenu("ผัดไท", "40","assets/images/picture4.jpeg")
  ];
   */

  /**
   * ListView.builder(
          itemCount: menu.length,
          itemBuilder: (BuildContext context, int index) {
          FoodMenu food = menu[index];
          return ListTile(
            leading: Image.asset(food.img),
            title: Text(food.name,style: TextStyle(fontSize: 30),),
            subtitle: Text("ราคา " + food.price + " บาท"),
            onTap: (){
              print("you choose " + food.name);
            },
          );
        })
   */
}