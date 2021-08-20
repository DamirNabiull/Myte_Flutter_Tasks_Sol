import 'dart:math';

void main() {
  var list = [], k = 0, ans = "";
  for (var i = 0; i < 10; i++) {
    list.add(Random().nextInt(1000));
  }
  list.forEach((element) {
    if (element % 2 == 0) {
      ans = k == 0 ? '${element}' : ans + ',${element}';
      k += 1;
    }
  });
  print(ans);
}
