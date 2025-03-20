import 'package:ecommerce_admin_panel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app_route.dart';

/// Entry Point of Flutter App
Future<void> main() async {
  // Ensure that Widgets are initializeZd
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize GetX Local Storage

  // Remove # sign from url
  setPathUrlStrategy();

  // Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    //  .then((_) => Get.put(AuthenticationRepository()));

  // Main App Starts here...
  runApp(const AppRoute());
}
