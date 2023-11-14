

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          appbar(),
          SizedBox(
            height: 10,
          ),
          story(),
          SizedBox(
            height: 10,
          ),
          categories(),
          SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }

  categories() {
    return Container(
      width: Get.width,
      color: Colors.red,
      height: 100,);
  }

  story() {
    return Container(
          width: Get.width,
          color: Colors.red,
          height: 100,);
  }

 appbar() {
    return Container(
          width: Get.width,
          color: Colors.red,
          height: 50,);
  }
}
