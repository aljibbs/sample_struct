import 'package:get/get.dart';
import 'package:sample_struct/feature/post/data/repos/post.dart';

import 'package:sample_struct/feature/post/domain/entities/post.dart';

class PostController extends GetxController with StateMixin<List<Post>> {
  final postRepo = Get.find<PostRepository>();

  @override
  void onInit() {
    super.onInit();
    change([], status: RxStatus.loading());
    getPosts();
  }

  getPosts() {
    postRepo.getPosts().then((data) {
      data.fold((res) {
        change(res, status: RxStatus.success());
      }, (err) => change([], status: RxStatus.error(err)));
    });
  }
}
