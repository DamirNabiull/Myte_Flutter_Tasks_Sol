import 'dart:io';

void main() {
  String? s;
  var n, ans;
  while (true) {
    s = stdin.readLineSync();
    n = int.tryParse(s!);
    ans = n == null ? 'Это не число' : n;
    print(ans);
  }
}
