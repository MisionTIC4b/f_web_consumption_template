import 'dart:math';

import 'package:f_web_consumption/data/services/json_placeholder.dart';
import 'package:f_web_consumption/domain/models/post.dart';

abstract class PostsManager {
  static final _service = JsonPlaceholderService();
  static final _random = Random();

  static Future<List<Post>> fetchPosts() async {
    /* TODO: retorna la lista de posts */
  }

  static Future<void> uploadPost() async {
    /* TODO: crea y sube un post */
  }
}
