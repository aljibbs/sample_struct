import 'package:dartz/dartz.dart';
import 'package:sample_struct/feature/post/domain/entities/post.dart';

abstract class IPostRepository {
  Future<Either<Post, String>> createPost(
      {required String userID, required String title, required String desc});
      
  Future<Either<List<Post>, String>> getPosts();
}
