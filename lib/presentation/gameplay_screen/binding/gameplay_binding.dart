import '../controller/gameplay_controller.dart';
import 'package:get/get.dart';

class GameplayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameplayController());
  }
}