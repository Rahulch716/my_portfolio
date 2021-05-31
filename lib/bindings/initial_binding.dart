import 'package:get/get.dart';
import 'package:my_portfolio/controllers/stack_controller.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<StackController>(() => StackController());
  }

}