import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    log.info('Number of books about http: $itemCount.');
  } else {
    log.info('Request failed with status: ${response.statusCode}.');
  }
  //👻 INFO 2023-11-29 15:43:04.193 [caller info not available] Number of books about http: 932
}
