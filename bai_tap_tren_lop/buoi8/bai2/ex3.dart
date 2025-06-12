Future<int> calculateSum() async {
  await Future.delayed(Duration(seconds: 5));

  int s = 0;
  for (int i = 0; i < 1000000; i++) {
    s += i;
  }

  return s;
}

void main() async {
  int s = await calculateSum();

  print(s);
}
