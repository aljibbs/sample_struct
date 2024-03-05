import 'package:get/get.dart';
import 'package:sample_struct/feature/comments/controllers/comment.dart';
import 'package:sample_struct/feature/comments/data/repos/comment.dart';

class CommentBiding extends Bindings {
  @override
  void dependencies() {
    Get.put(CommentRepository());
    Get.put(CommenttController());
  }
}
