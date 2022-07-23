import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:f_web_consumption/domain/models/post.dart';
import 'package:f_web_consumption/domain/services/placeholder_interface.dart';

class JsonPlaceholderService implements JsonPlaceholderInterface {
  @override
  String get baseUrl => 'jsonplaceholder.typicode.com';

  @override
  Future<List<Post>> fetchPosts() async {
    var uri = Uri.https(baseUrl, '/posts');
    final response = await http.get(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    if (response.statusCode == 200) {
      var res = json.decode(response.body);
      final List<Post> posts = [];
      for (var post in res) {
        posts.add(Post.fromJson(post));
      }
      for (var i = 0; i < 20; i++) {
        posts[i].read = false;
      }
      return posts;
    } else {
      throw Exception('Error on request');
    }
  }

  @override
  Future<void> uploadPost(Post post) async {
    var uri = Uri.https(baseUrl, '/posts');
    final response = await http.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(
        post.toMap(),
      ),
    );
    if (response.statusCode != 201) {
      throw Exception('Error on request');
    }
  }
}
