import 'package:get/get.dart';
import 'package:sample_struct/feature/shared/domain/entities/app_user.dart';

class AuthController extends GetxController {
  final appUser = AppUser().obs;

  @override
  void onInit() {
    appUser.value.id = 1;
    appUser.value.name = "Leanne Graham";
    appUser.value.email = "Sincere@april.biz";
    appUser.value.username = "Bret";
    super.onInit();
  }
}
