import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifiedPage extends StatelessWidget {
  final String? lable;
  const NotifiedPage({required this.lable, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.grey[600] : Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Get.isDarkMode ? Colors.white : Colors.grey,
          ),
        ),
        title: Text(
          this.lable.toString().split("|")[0],
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Get.isDarkMode ? Colors.white : Colors.grey[400],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            this.lable.toString().split("|")[1],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Get.isDarkMode ? Colors.black : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
