import 'dart:math';

void main() {
  var list = [];
  for (var i = 0; i < 10; i++) {
    list.add(Random().nextInt(1000));
  }
  list.forEach((element) {
    if (element % 2 == 0) {
      print('${element},');
    }
  });
}
