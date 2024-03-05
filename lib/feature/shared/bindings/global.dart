import 'package:get/get.dart';
import 'package:sample_struct/feature/shared/controllers/auth.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
  }
}
