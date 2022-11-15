import '../controller/team_choosing_controller.dart';
import 'package:get/get.dart';

class TeamChoosingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeamChoosingController());
  }
}
