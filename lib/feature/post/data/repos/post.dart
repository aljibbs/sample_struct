import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sample_struct/feature/post/domain/entities/post.dart';
import 'package:sample_struct/feature/post/domain/repos/post.dart';

class PostRepository extends GetConnect implements IPostRepository {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com/posts';
    super.onInit();
  }

  @override
  Future<Either<Post, String>> createPost(
      {required String userID,
      required String title,
      required String desc}) async {
    try {
      final res = await post(
        "",
        jsonEncode({
          'userId': userID,
          'title': title,
          'body': desc,
        }),
      );

      final newPost = await compute(Post.fromJson, res.body);

      return Left(newPost);
    } catch (err) {
      return const Right("Could not create post");
    }
  }

  @override
  Future<Either<List<Post>, String>> getPosts() async {
    try {
      final res = await get("/");
      final posts = await compute(Post.fromJsonList, res.body);
      return Left(posts);
    } catch (err) {
      return const Right("Could not get posts");
    }
  }
}
