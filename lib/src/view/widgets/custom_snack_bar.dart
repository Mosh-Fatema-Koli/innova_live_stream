import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innova_live_streem/src/view/widgets/colors.dart';
import 'package:innova_live_streem/src/view/widgets/k_text.dart';



void showCustomSnackBar(String message, {bool isError = true, bool getXSnackBar = false}) {
  if(message != null && message.isNotEmpty) {
    if(getXSnackBar) {
      Get.showSnackbar(GetSnackBar(
        backgroundColor: isError ? BrandColors.colorButton: Colors.green,
        message: message,
        duration: const Duration(seconds: 3),
        snackStyle: SnackStyle.FLOATING,
        margin: EdgeInsets.all(10.sp),
        borderRadius: 8.r,
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
      ));
    }else {
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        dismissDirection: DismissDirection.horizontal,
        margin: EdgeInsets.only(
          right:10.h,
          top:10.h, bottom:10.h, left:10.h,
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: isError ? BrandColors.colorButton: Colors.green,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        content: Center(child: KText(text: message,color: Colors.white,))
      ));
    }
  }
}