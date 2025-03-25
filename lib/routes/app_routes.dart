import 'package:ecommerce_admin_panel/app_route.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/routes/routes_middleware.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TAppRoute {
static final List<GetPage> pages = [
  GetPage(name: TRoutes.firstScreen, page: ()=> Scaffold(), middlewares: [TRouteMiddleware()]),
  GetPage(name: TRoutes.secondScreen, page: () => const Scaffold() , middlewares: [TRouteMiddleware()]),
  GetPage(name: TRoutes.secondScreenWithUID, page: () => const Scaffold()),
  GetPage(name: TRoutes.responsiveDesignScreen, page: () => const ResponsiveDesignScreen())
];
}