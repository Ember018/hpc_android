// Thư viện có các loại sách (sách giáo khoa và sách tham khảo). Quản lý việc mượn/trả sách của sinh viên. Chương trình cần áp dụng các nguyên tắc OOP như đóng gói, kế thừa, đa hình, và trừu tượng

import 'dart:io';

import 'text_book.dart';
import 'reference_book.dart';

import 'library_management.dart';

void main() {
  print("My Library");

  List<TextBook> textBooks = [];
  List<ReferenceBook> referenceBooks = [];

  while (true) {
    print("----------------------");
    print("1. Add a new book");
    print("2. Display book");
    print("3. Lend a book");
    print("4. Return a book");
    print("0. Exit");
    print("Enter your choice: ");

    String? choice = stdin.readLineSync();

    if (choice == '0') {
      print("Exiting program");
      break;
    } else if (choice == '1') {
      addBook(textBooks, referenceBooks);
    } else if (choice == '2') {
      displayBooks(textBooks, referenceBooks);
    } else if (choice == '3') {
      lendBook(textBooks, referenceBooks);
    } else if (choice == '4') {
      returnBook(textBooks, referenceBooks);
    } else {
      print("Invalid choice! Please enter a number between 0 and 4");
    }
  }
}
