import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:ecommerce_admin_panel/utils/exceptions/firebase_exceptions.dart';
import 'package:ecommerce_admin_panel/utils/exceptions/format_exceptions.dart';
import 'package:ecommerce_admin_panel/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
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

  // Function to determine the relevant screen and redirect accordingly
  void screenRedirect() async{
    final user = _auth.currentUser;

    // If the user is logged in
    if (user != null ){
      // Navigate to the Home
      Get.offAllNamed(TRoutes.dashboard);
    } else{
      // Navigate to the Login Screen
      Get.offAllNamed(TRoutes.login);
    }
  }


// LOGIN
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

// REGISTER
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

// REGISTER USER BY ADMIN

// EMAIL VERIFICATION

// FORGET PASSWORD

// RE AUTHENTICATE USER

// LOGOUT USER
Future<void> logout() async{
  try{
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(TRoutes.login);
  }on FirebaseAuthException catch(e){
    throw TFirebaseAuthException(e.code).message;
  }on TFirebaseException catch (e){
    throw TFirebaseException(e.code).message;
  }on FormatException catch(_){
    throw const TFormatException();
  }on PlatformException catch (e){
    throw TPlatformException(e.code).message;
  } catch (e) {
    throw 'Something went wrong. Please try again';
  }
}
// DELETE USER
}
