import '../controller/confirm_controller.dart';
import 'package:get/get.dart';

class ConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmController());
  }
}
