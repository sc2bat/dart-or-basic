import 'package:intl/intl.dart';
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

// 다음과 같은 Book 클래스가 있습니다.
// 다음 동작을 할 수 있도록 Book 클래스를 수정하시오.

// 제목과 출간일이 같으면 같은 책으로 판단한다. 또한 Set 에 넣으면 동일 객체로 판단한다.
// Book 인스턴스를 담고 있는 컬렉션에 대해 sort() 를 수행하여 출간일이 오래된 순서대로 정렬한다.
// deep copy 를 지원한다

class Book {
  String title;
  DateTime publishDate = DateTime.now();
  String comment;

  Book({
    required this.title,
    required this.publishDate,
    required this.comment,
  });
}

void main() {
  DateFormat.yMd();

  final DateTime now = DateTime.now();
  final DateTime oneDayAfter = now.add(const Duration(days: 1));
  final DateTime twoDayAfter = now.add(const Duration(days: 2));

  Set<Book> bookList = {};

  Book book1 =
      Book(title: 'book1', publishDate: now, comment: 'book1 comments');
  Book book2 =
      Book(title: 'book1', publishDate: now, comment: 'book2 comments');
  Book book3 =
      Book(title: 'book3', publishDate: now, comment: 'book3 comments');
  Book book4 =
      Book(title: 'book3', publishDate: now, comment: 'book4 comments');

  bookList.add(book1);
  bookList.add(book2);
  bookList.add(book3);
  bookList.add(book4);

  log.info(bookList);
}
