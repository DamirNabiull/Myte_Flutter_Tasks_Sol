import 'dart:io';

void main() {
  var arr = [], n;
  String? s;
  while (true) {
    s = stdin.readLineSync();
    s = s == null ? 'null' : s;
    n = int.tryParse(s);
    if (s == 'exit') {
      break;
    }
    if (n == null) {
      print('Это не число');
    } else {
      arr.add(n);
    }
    print('Длина массива: ${arr.length}');
  }
}
