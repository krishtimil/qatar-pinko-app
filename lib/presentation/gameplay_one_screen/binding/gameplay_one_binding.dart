import '../controller/gameplay_one_controller.dart';
import 'package:get/get.dart';

class GameplayOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GameplayOneController());
  }
}
