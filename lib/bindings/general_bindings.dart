import 'package:ecommerce_admin_panel/utils/helpers/network_manager.dart';
import 'package:get/get.dart';


import '../features/authentication/controllers/user_controller.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    // -- Core
    Get.lazyPut(() => NetworkManager() , fenix: true);
    Get.lazyPut(() => UserController() , fenix: true);
  }
}