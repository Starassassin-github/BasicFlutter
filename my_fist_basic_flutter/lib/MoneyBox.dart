import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// สร้่าง Container ต้นแบบเอาไว้
class MoneyBox extends StatelessWidget {
  late String title; // ชื่อหมวดหมู่ รายการ
  late double amount; // จำนวนเงิน
  late Color color; // สีของกล่อง
  late double size; // ขนาดของกล่อง

  MoneyBox(this.title, this.amount, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Text(
            '${NumberFormat("#,###.##").format(amount)}',
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ))
        ],
      ),
    );
  }
}
