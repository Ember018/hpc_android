import 'book.dart';

class ReferenceBook extends Book {
  String? _topic;

  ReferenceBook(String title, String author, String status, this._topic)
      : super(title, author, status);

  String? get topic => _topic;

  @override
  String? getBookType() {
    return ("Reference Book");
  }
}
