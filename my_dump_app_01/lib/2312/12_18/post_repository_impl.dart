import 'dart:convert';
import 'dart:math';

import 'package:my_dump_app_01/2312/12_18/post.dart';
import 'package:my_dump_app_01/2312/12_18/post_repository.dart';
import 'package:http/http.dart' as http;

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    final jsonList = jsonDecode(response.body) as List<dynamic>;

    return jsonList.map((e) => Post.fromMap(e)).toList();
  }
}
