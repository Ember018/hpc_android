void main() {
  final a = <int>[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  final b = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> c = [];

  for (var numa in a) {
      for (var numb in b) {
          if (numa == numb) {
              c.add(numa);
            }
        }
    }

  print(c);

}

