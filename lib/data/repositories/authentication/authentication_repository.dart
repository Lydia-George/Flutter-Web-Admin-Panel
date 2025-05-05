import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

// Firebase Auth Instance
final _auth = FirebaseAuth.instance;

// Get Authenticated User Data
User? get authUser => _auth.currentUser;
// *- now we can easily use this authUser without calling _auth because it is private-*

// Get IsAuthenticated User
bool get isAuthenticated => _auth.currentUser != null;


// this function will be called whenever the app starts or when the function will be ready to be used
  @override
  void onReady() {
    //Persistence means that to keep the state inside the browser even if the app is closed
    _auth.setPersistence(Persistence.LOCAL);
  }






// LOGIN

// REGISTER

// REGISTER USER BY ADMIN

// EMAIL VERIFICATION

// FORGET PASSWORD

// RE AUTHENTICATE USER

// LOGOUT USER

// DELETE USER

}