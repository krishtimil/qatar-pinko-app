import '../controller/gameplay_two_controller.dart';
import 'package:get/get.dart';

class GameplayTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameplayTwoController());
  }
}
