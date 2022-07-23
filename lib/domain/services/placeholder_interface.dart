import 'package:f_web_consumption/domain/models/post.dart';

abstract class JsonPlaceholderInterface {
  external String get baseUrl;

  external Future<List<Post>> fetchPosts();

  external Future<void> uploadPost(Post post);
}
