import 'book.dart';

class TextBook extends Book {
  String? _subject;

  TextBook(String title, String author, String status, this._subject)
      : super(title, author, status);

  String? get subject => _subject;

  @override
  String? getBookType() {
    return ("Text Book");
  }
}
