
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

/// Controller for handling login logic & functionality
class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final rememberMe = false.obs;
  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();
  final loginFormKey = GlobalKey<FormState>();

  /// Handles email and password sign-in process
  Future<void> emailAndPasswordSignIn() async{

  }

 /// Handles registration of admin user
  // this method have to deal with the cloud functions or cloud calls that's why we using async and return type is a type of future void
Future<void> registerAdmin() async{}
}