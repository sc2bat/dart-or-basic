import 'dart:convert';

import 'package:simple_logger/simple_logger.dart';

// ignore: slash_for_doc_comments
/**
 * 다음과 같은 영화 정보 Json 을 반환하는 함수가 있다. (async - await 사용할 것)

 * * 참고
jsonEncode() : Map 데이터를 Json 형태의 문자열로 변환해 주는 함수
jsonDecode() : Json 형태의 문자열을 Map<String, dynamic> 으로 변환

 */

class MovieInfo {
  String title;
  String director;
  int year;

  MovieInfo({
    required this.title,
    required this.director,
    required this.year,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'director': director,
      'year': year,
    };
  }

  factory MovieInfo.fromMap(Map<String, dynamic> map) {
    return MovieInfo(
      title: map['title'] as String,
      director: map['director'] as String,
      year: map['year'] as int,
    );
  }
}

Future<String> getMovieInfo() async {
  final mockData = {
    'title': 'Dune: Part Two',
    'director': 'Denis Villeneuve',
    'year': 2024,
  };

  return jsonEncode(mockData);
}

void main() async {
  final log = SimpleLogger();

  final String movieInfoJsonString = await getMovieInfo();
  final MovieInfo movieInfo =
      MovieInfo.fromMap(jsonDecode(movieInfoJsonString));

  log.info(movieInfo.director);
  // 👻 INFO 2023-12-18 15:31:59.282 [caller info not available] Denis Villeneuve
}
