import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TRouteMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    print('--------------------------Middleware called------------------------');
    final isAuthenticated = false;
    return isAuthenticated ? null : const RouteSettings(name: TRoutes.login);
  }
}