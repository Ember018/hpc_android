abstract class Book {
  static int _nextId = 1;
  final int _id;
  String? _title;
  String? _author;
  String? _status;

  Book(this._title, this._author, this._status) : _id = _nextId++;

  int get id => _id;

  String? get title => _title;
  String? get author => _author;
  String? get status => _status;

  set title(String? newTitle) {
    _title = newTitle;
  }

  set author(String? newAuthor) {
    _author = newAuthor;
  }

  set status(String? newStatus) {
    _status = newStatus;
  }

  void getBookType();
}
