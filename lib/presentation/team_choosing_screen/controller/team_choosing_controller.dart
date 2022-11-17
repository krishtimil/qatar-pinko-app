import '/core/app_export.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_screen/models/team_choosing_model.dart';

class TeamChoosingController extends GetxController {
  Rx<TeamChoosingModel> teamChoosingModelObj = TeamChoosingModel().obs;

  RxInt _selIndex = 0.obs;

  int get selIndex => _selIndex.value;

  set selIndex(int value) {
    _selIndex = value.obs;
    print(_selIndex.value);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
