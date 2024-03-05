import 'package:get/get.dart';
import 'package:sample_struct/feature/post/controllers/post.dart';
import 'package:sample_struct/feature/post/data/repos/post.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PostRepository());
    Get.put(PostController());
  }
}
