import 'dart:io';
import 'dart:convert';

void main() async {
  File file = File('user2.json');

  String content = await file.readAsString();
  var data = jsonDecode(content);

  print("Username - Email");
  for (var user in data) {
    print("${user['username']} - ${user['email']}");
  }
}
