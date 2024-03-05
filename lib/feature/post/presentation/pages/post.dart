import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_struct/core/routes/pages.dart';
import 'package:sample_struct/feature/post/controllers/post.dart';

class PostsPage extends GetView<PostController> {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Posts"),
      ),
      body: SizedBox(
          width: context.width,
          height: context.height,
          child: controller.obx(
            (state) => state == null
                ? const Text('Service unavailable')
                : ListView.separated(
                    padding: const EdgeInsets.all(20),
                    itemBuilder: (context, index) => ListTile(
                      title: Text(state[index].title),
                      subtitle: Text(state[index].body),
                      onTap: () => Get.toNamed(Routes.comments, arguments: {
                        'postId': state[index].id,
                      }),
                    ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: state.length,
                  ),
            onLoading: const Center(
              child: SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            ),
            onError: (error) => Center(
                child: Text(
              error!,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            )),
            onEmpty: const Center(
              child: Text('No posts available'),
            ),
          )),
    );
  }
}
