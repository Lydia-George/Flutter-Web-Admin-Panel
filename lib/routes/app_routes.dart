import 'package:ecommerce_admin_panel/app_route.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/routes/routes_middleware.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features.authentication/screens.login/login.dart';

class TAppRoute {
static final List<GetPage> pages = [
  GetPage(name: TRoutes.login, page: ()=> const LoginScreen()),

];
}