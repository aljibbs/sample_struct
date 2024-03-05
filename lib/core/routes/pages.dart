// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:get/get.dart';
import 'package:sample_struct/feature/comments/bidings/comment.dart';
import 'package:sample_struct/feature/comments/presentation/pages/comments.dart';
import 'package:sample_struct/feature/post/bindings/post.dart';
import 'package:sample_struct/feature/post/presentation/pages/post.dart';

part 'routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.post;

  static final GetPage UNKNOWN_ROUTE = GetPage(
    name: _Paths.post,
    page: () => const PostsPage(),
  );

  static final List<GetPage> routes = [
    GetPage(
      name: _Paths.post,
      page: () => const PostsPage(),
      binding: PostBinding(),
    ),
    GetPage(
      name: _Paths.comments,
      page: () => CommentPage(),
      binding: CommentBiding(),
    ),
  ];
}
