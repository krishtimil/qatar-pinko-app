import '../controller/stats_controller.dart';
import 'package:get/get.dart';

class StatsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StatsController());
  }
}
