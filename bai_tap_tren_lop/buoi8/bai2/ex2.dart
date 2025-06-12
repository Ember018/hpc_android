Future<List<String>> fetchUsername() async {
  await Future.delayed(Duration(seconds: 2));

  return ["ember", "cinder", "flicker"];

  // throw Exception('Could not fetch names');
}

void main() async {
  print("Fetching username...");

  try {
    List<String> names = await fetchUsername();

    for (var name in names) {
      print(name);
    }
  } catch (e) {
    print("Error: $e");
  }
}
