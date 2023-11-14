

import 'package:get/get.dart';
import 'package:innova_live_streem/src/view/screen/Home/home_page.dart';
import 'package:innova_live_streem/src/view/screen/Search/search.dart';

const String splashScreen = "/splash-screen";
const String introScreen = "/intro_screen";
const String loginScreen = "/login_screen";
const String signupScreen = "/registration_screen";
const String forgetPassScreen = "/forget_password_screen";
const String changePassScreen = "/change_password_screen";


const String homeScreen = "/home_screen";
const String searchScreen = "/search_screen";
const String profileScreen = "/profile_screen";
const String videoScreen = "/video_screen";





List<GetPage> getPages = [
  //
  // GetPage(name: splashScreen, page: (() => SplashScreen()),),
  // GetPage(name: introScreen, page: (() => IntroductionScreen()), ),
  // GetPage(name: loginScreen, page: () => LoginPage(), transition: Transition.fade,  ),
  // GetPage(name: signupScreen, page: (() => RegistrationPage()), transition: Transition.fade,),
  GetPage(name: homeScreen, page: () => HomePage(),),
  GetPage(name: searchScreen, page: () => SearchPage()),
  GetPage(name: videoScreen, page: () => SearchPage()),
 // GetPage(name: profileScreen, page: () => ProfiePage()),





];