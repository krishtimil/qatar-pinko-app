import '../controller/team_choosing_one_controller.dart';
import 'package:get/get.dart';

class TeamChoosingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TeamChoosingOneController());
  }
}
