


import 'package:get/get.dart';

class ApiChecker {
  // static final GoogleSignIn _googleSignIn = GoogleSignIn();
  // static final FirebaseAuth _auth = FirebaseAuth.instance;
  static void checkApi(Response response, {bool getXSnackBar = false})async{
    if(response.statusCode != 200){
      if(response.statusCode == 401||response.statusCode==403||response.statusCode==404) {
      //  showCustomSnackBar(response.body['message'], getXSnackBar: getXSnackBar);

      }else {
      //  showCustomSnackBar(response.statusText!, getXSnackBar: getXSnackBar);
      }

    }


  }
}