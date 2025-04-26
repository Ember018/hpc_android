import 'dart:io';

import 'book.dart';
import 'text_book.dart';
import 'reference_book.dart';

void addBook(List<TextBook> textBooks, List<ReferenceBook> referenceBooks) {
  print("Add a new book!");
  print("Enter book type (1 for Textbook, 2 for Reference Book): ");

  String? typeChoice = stdin.readLineSync();

  if (typeChoice == null || (typeChoice != '1' && typeChoice != '2')) {
    print("Invalid input! Please enter 1 or 2.");
    return;
  }

  print("Enter title: ");
  String title = stdin.readLineSync() ?? "Unknown title";

  print("Enter author: ");
  String author = stdin.readLineSync() ?? "Unknown author";

  print("Enter status (available or unavailable)");
  String? status = stdin.readLineSync() ?? "available";

  if (status != "available" && status != "unavailable") {
    print("Invalid status!");
    return;
  }

  if (typeChoice == 1) {
    print("Enter subject: ");
    String subject = stdin.readLineSync() ?? "Unknown subject";
    textBooks.add(TextBook(title, author, status, subject));
    print("Textbook added successfully!");
  } else {
    print("Enter topic: ");
    String topic = stdin.readLineSync() ?? "Unknown topic";
    referenceBooks.add(ReferenceBook(title, author, status, topic));
    print("Reference book added successfully!");
  }
}

void displayBooks(List<TextBook> textBook, List<ReferenceBook> referenceBook) {
  print("----LIBRARY CATALOG----");

  if (textBook.isEmpty && referenceBook.isEmpty) {
    print("The library is empty");
  }

  print("----TEXTBOOKS----");
  if (textBook.isEmpty) {
    print("No Textbook available");
  } else {
    for (int i = 0; i < textBook.length; i++) {
      var book = textBook[i];
      print(
          "${i + 1}. Id: ${book.id} Title: ${book.title} Author: ${book.author} Status: ${book.status} Subject: ${book.subject}");
    }
  }

  print("----REFERENCE BOOKS----");
  if (referenceBook.isEmpty) {
    print("No Reference Book available");
  } else {
    for (int i = 0; i < referenceBook.length; i++) {
      var book = referenceBook[i];
      print(
          "Id: ${book.id} | Title: ${book.title} | Author: ${book.author} | Status: ${book.status} | Subject: ${book.topic}");
    }
  }
}

void lendBook(List<TextBook> textBooks, List<ReferenceBook> referenceBooks) {
  print("Enter title of the book to lend");
  String? titleToLend = stdin.readLineSync()?.trim().toLowerCase();

  if (titleToLend == null || titleToLend.isEmpty) {
    print("Invalid title.");
    return;
  }

  Book? foundBook;

  // Search textbook
  for (var book in textBooks) {
    if (book.title?.toLowerCase() == titleToLend) {
      foundBook = book;
      break;
    }
  }

  // Search reference book if textbook not found
  for (var book in referenceBooks) {
    if (book.title?.toLowerCase() == titleToLend) {
      foundBook = book;
      break;
    }
  }

  if (foundBook != null) {
    if (foundBook.status == "available") {
      foundBook.status = "unavailable";
      print("${foundBook.title} lent successfully.");
    } else {
      print("${foundBook.title} is currently unavailable");
    }
  } else {
    print("${titleToLend} does not exist in the library");
  }
}

void returnBook(List<TextBook> textBooks, List<ReferenceBook> referenceBooks) {
  print("Enter the title of the book to return: ");
  String? titleToReturn = stdin.readLineSync()?.trim().toLowerCase();

  if (titleToReturn == null || titleToReturn.isEmpty) {
    print("Invalid title");
    return;
  }

  Book? foundBook;

  for (var book in textBooks) {
    if (book.title?.toLowerCase() == titleToReturn) {
      foundBook = book;
      break;
    }
  }

  for (var book in referenceBooks) {
    if (book.title?.toLowerCase() == titleToReturn) {
      foundBook = book;
      break;
    }
  }

  if (foundBook != null) {
    if (foundBook.status == "unavailable") {
      foundBook.status = "available";
      print("${foundBook.title} returned successfully");
    } else {
      print("${foundBook.title} is already in the library");
    }
  } else {
    print("${titleToReturn} does not exist in the library");
  }
}
