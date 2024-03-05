import 'package:get/get.dart';
import 'package:sample_struct/feature/comments/data/repos/comment.dart';
import 'package:sample_struct/feature/comments/domain/entities/comments.dart';

class CommenttController extends GetxController with StateMixin<List<Comment>> {
  final commentRepo = Get.find<CommentRepository>();

  @override
  void onInit() {
    super.onInit();
    change([], status: RxStatus.loading());
    final int postId = Get.arguments["postId"];
    print("This post Id is: $postId");
    getComments(postId: postId);
  }

  getComments({required int postId}) {
    commentRepo.getComments(postId: postId).then((data) {
      data.fold((res) {
        print(res);
        change(res, status: RxStatus.success());
      }, (err) => change([], status: RxStatus.error(err)));
    });
  }
}
