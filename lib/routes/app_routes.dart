import 'package:ecommerce_admin_panel/app_route.dart';
import 'package:ecommerce_admin_panel/features.authentication/screens/forget_password/forget_password.dart';
import 'package:ecommerce_admin_panel/features.authentication/screens/reset_password/reset_password.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/routes/routes_middleware.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features.authentication/screens/dashboard/dashboard.dart';
import '../features.authentication/screens/login/login.dart';


class TAppRoute {
static final List<GetPage> pages = [
  GetPage(name: TRoutes.login, page: ()=> const LoginScreen()),
  GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
  GetPage(name: TRoutes.resetPassword, page: () => const ResetPasswordScreen()),
  // before going to dashboard screen you have to go first to this middleware logic
  GetPage(name: TRoutes.dashboard, page: () => const DashboardScreen() , middlewares: [TRouteMiddleware()]),


];
}