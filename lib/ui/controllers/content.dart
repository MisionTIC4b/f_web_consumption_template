import 'package:f_web_consumption/domain/models/post.dart';
import 'package:f_web_consumption/domain/use_cases/service_manager.dart';
import 'package:get/get.dart';

class ContentController extends GetxController {
  final Rx<List<Post>> _posts = Rx([]);

  List<Post> get posts => _posts.value;

  Future<List<Post>> fetchPosts() async {
    // TODO: obten los posts con [PastsManager]
    return posts;
  }

  Future<void> uploadPost() async {
    // TODO: publica un post con [PastsManager]
  }
}
