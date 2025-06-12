import 'dart:io';
import 'dart:convert';

void main() async {

  File file = File('user.json');
  String content = await file.readAsString();

  var data = jsonDecode(content);

  print("Username: ${data['user']['name']}");
  print("City: ${data['user']['address']['city']}");

  print("Product - Price");
  for (var order in data['user']['orders']) {
    print("${order['product']} - ${order['price']}");
  }

}
