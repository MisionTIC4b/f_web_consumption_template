import 'dart:math';

import 'package:f_web_consumption/data/services/json_placeholder.dart';
import 'package:f_web_consumption/domain/models/post.dart';

abstract class PostsManager {
  static final _service = JsonPlaceholderService();
  static final _random = Random();

  static Future<List<Post>> fetchPosts() async {
    return await _service.fetchPosts();
  }

  static Future<void> uploadPost() async {
    // El post no se guardará asi que no tiene importancia cambiar estos datos.
    final newPost = Post(
      id: _random.nextInt(100),
      userId: _random.nextInt(100),
      title: 'post title',
      body: 'post body',
    );
    await _service.uploadPost(newPost);
  }
}
