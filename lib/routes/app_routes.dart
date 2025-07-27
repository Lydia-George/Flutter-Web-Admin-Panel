import 'package:ecommerce_admin_panel/app_route.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/routes/routes_middleware.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/screens/dashboard/dashboard.dart';
import '../features/screens/forget_password/forget_password.dart';
import '../features/screens/login/login.dart';
import '../features/screens/reset_password/reset_password.dart';



class TAppRoute {
static final List<GetPage> pages = [
  GetPage(name: TRoutes.login, page: ()=> const LoginScreen()),
  GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPasswordScreen()),
  GetPage(name: TRoutes.resetPassword, page: () => const ResetPasswordScreen(email: '',)),
  // before going to dashboard screen you have to go first to this middleware logic
  GetPage(name: TRoutes.dashboard, page: () => const DashboardScreen() , middlewares: [TRouteMiddleware()]),


];
}