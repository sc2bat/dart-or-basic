import 'package:http/http.dart' as http;

class JsonPlaceHolderApi {
  Future<http.Response> getPost() async {
    return await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  }
}
