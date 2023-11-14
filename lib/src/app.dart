
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innova_live_streem/src/view/const/route/route.dart';
import 'package:innova_live_streem/src/view/const/theme/app_theme.dart';
import 'package:innova_live_streem/src/view/const/theme/controller/theme_controller.dart';
import 'package:innova_live_streem/src/view/screen/Main_page/nav_bar.dart';


class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.

  final _themeController=Get.put(ThemeController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _themeController.getCurrentAppTheme();
    // _themeController.setDarkTheme(_themeController.isDarkTheme.value);
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return Obx(()=>
            GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Ecommerce Project',
              // You can use the library anywhere in the app even in theme

              // theme: ThemeData(
              //   scaffoldBackgroundColor: AppColors.bgColor,
              //   fontFamily: "inter",
              //     textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue,displayColor: Colors.red),
              //     hintColor: Colors.red,
              //   primarySwatch: Colors.blue,
              //   appBarTheme: AppBarTheme(
              //     backgroundColor: AppColors.bgColor,
              //     elevation: 0
              //   )
              //
              // ),
              theme: Themes.themeData(_themeController.isDarkTheme.value, context),
              getPages:getPages,
              home: BottomNaVBarPage(),
            ),
        );
      },

    );
  }
}
