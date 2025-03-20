import 'package:ecommerce_admin_panel/app_route.dart';
import 'package:ecommerce_admin_panel/routes/routes.dart';
import 'package:ecommerce_admin_panel/routes/routes_middleware.dart';
import 'package:get/get.dart';

class TAppRoute {
static final List<GetPage> pages = [
  GetPage(name: TRoutes.firstScreen, page: ()=>const FirstScreen(), middlewares: [TRouteMiddleware()]),
  GetPage(name: TRoutes.secondScreen, page: () => const SecondScreen() , middlewares: [TRouteMiddleware()]),
  GetPage(name: TRoutes.secondScreenWithUID, page: () => const SecondScreen()),
];
}