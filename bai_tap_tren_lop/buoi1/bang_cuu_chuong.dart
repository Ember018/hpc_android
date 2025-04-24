void main() {
  print("=== BẢNG CỬU CHƯƠNG ===");
  print("");

  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 10; j++) {
      int result = i * j;
      print("$i x $j = $result"); 
    }
    
    print(""); 
  }
}
