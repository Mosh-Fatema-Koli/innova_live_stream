
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:innova_live_streem/src/view/const/data_save_in_local/save_in_share_pref.dart';
import 'package:innova_live_streem/src/view/const/utils/app_text.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ThemeController extends GetxController{

  var isDarkTheme=false.obs;
  static SharedPreferences? preferences;



  @override
  void onInit() {
    getCurrentAppTheme();

    super.onInit();
  }

  getCurrentAppTheme()async{
    isDarkTheme.value=await getTheme();
  }


  setDarkTheme(bool value)async{

    await setThemeData(value);
    isDarkTheme.value=value;

  }


  static setThemeData(bool value)async{
    preferences=await SharedPreferences.getInstance();
    print("Set Theme");
    preferences!.setBool(ShareprefSave.theme, value);


  }

  static Future<bool> getTheme()async{
    preferences=await SharedPreferences.getInstance();
    debugPrint("Get Current Theme");
    return preferences!.getBool(ShareprefSave.theme)??false;

  }


}