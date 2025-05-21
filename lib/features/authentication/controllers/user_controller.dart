import 'package:ecommerce_admin_panel/data/repositories/user/user_repository.dart';
import 'package:ecommerce_admin_panel/features/models/user_model.dart';
import 'package:ecommerce_admin_panel/utils/popups/loaders.dart';
import 'package:get/get.dart';

/// Controller for managing admin-related data and operations
class UserController extends GetxController{
static UserController get instance => Get.find();

final userRepository = Get.put(UserRepository());

/// Fetches user details from the repository
Future<UserModel> fetchUserDetails() async{
  try{
    final user = await userRepository.fetchAdminDetails();
    return user;
  }catch(e){
    TLoaders.errorSnackBar(title: 'Something went wrong' , message: e.toString());
    return UserModel.empty();

  }
}
}