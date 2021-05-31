import 'package:get/get.dart';

class StackController extends GetxController {
  int index = 0;

  indexIncrement() {
    // ignore: unnecessary_statements
    index < 2 ? index++ : null;
    update();
  }
  indexDecrement() {
    // ignore: unnecessary_statements
    index > 0 ? index-- :null;
    update();
  }
}
