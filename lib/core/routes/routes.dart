part of 'pages.dart';

abstract class Routes {
  static const post = _Paths.post;
  static String comments = post + _Paths.comments.replaceAll("/", "");
}

abstract class _Paths {
  static const post = '/';
  static const comments = '/comments';
}
