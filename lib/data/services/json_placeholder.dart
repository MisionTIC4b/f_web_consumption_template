import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:f_web_consumption/domain/models/post.dart';
import 'package:f_web_consumption/domain/services/placeholder_interface.dart';

class JsonPlaceholderService implements JsonPlaceholderInterface {
  @override
  String get baseUrl => 'jsonplaceholder.typicode.com';

  @override
  Future<List<Post>> fetchPosts() async {
/* TODO: Implementa la logica para consumir del endpoint [GET: /posts] */
  }

  @override
  Future<void> uploadPost(Post post) async {
/* TODO: Implementa la logica para consumir del endpoint [POST: /posts] */
  }
}
