void main() {
  Future.delayed(Duration(seconds: 2), () {
    return "I hope there are more golang jobs 🥲";
  }).then(
    (value) {
      print(value);
    },
  ).catchError((error) {
    print("Error: $error");
  });
}
