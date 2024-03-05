import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:sample_struct/feature/comments/domain/entities/comments.dart';
import 'package:sample_struct/feature/comments/domain/repos/comments.dart';

class CommentRepository extends GetConnect implements ICommentsRepository {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com//comments';
    super.onInit();
  }

  @override
  Future<Either<List<Comment>, String>> getComments(
      {required int postId}) async {
    try {
      final res = await get("?postId=$postId");
      final posts = await compute(Comment.fromJsonList, res.body);
      return Left(posts);
    } catch (e) {
      return const Right("Could not get posts");
    }
  }
}
