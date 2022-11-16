import '/core/app_export.dart';
import 'package:qatar_pinko_cup/presentation/stats_screen/models/stats_model.dart';

class StatsController extends GetxController {
  Rx<StatsModel> statsModelObj = StatsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
