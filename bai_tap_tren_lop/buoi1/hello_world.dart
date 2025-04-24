import 'dart:core';

void main() {
String str = "Hello, World!";

String reversedStr = reverseString(str);
Map<String, int> countStr = countChars(str);
String upperedStr = upperStr(str);

print("Dao nguoc: $reversedStr");
print("Dem so ky tu: $countStr");
print("Ky tu dang chu hoa: $upperedStr");
}

String reverseString(String str) {
  return str.split('').reversed.join('');
}

Map<String, int> countChars(String str) {
  Map<String, int> charCounts = {};

  for (int i = 0; i < str.length; i++) {
      String char = str[i];

      charCounts[char] = (charCounts[char] ?? 0) + 1;
    }

    return charCounts;
}

String upperStr(String str) {
  String result = '';
  for (int  i = 0; i < str.length; i++) {
      String char = str[i];
      int charCode = char.codeUnitAt(0);

      // check if character is lowercase
      if (charCode >= 97 && charCode <= 122) {
          // convert to uppercase by subtracting the ASCII diff
          charCode -= 32;
          result += String.fromCharCode(charCode);
        } else {
          // keeping original lowercase char
          result += char;
        }
    }

    return result;
}



