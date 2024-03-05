import 'package:dartz/dartz.dart';
import 'package:sample_struct/feature/comments/domain/entities/comments.dart';

abstract class ICommentsRepository {
  Future<Either<List<Comment>, String>> getComments({required int postId});
}
