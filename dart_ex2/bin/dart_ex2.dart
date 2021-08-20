import 'dart:io';

void main() {
  var s = stdin.readLineSync();
  var n = int.tryParse(s!);
  var ans = n == null ? 'Это не число' : n;
  print(ans);
}
