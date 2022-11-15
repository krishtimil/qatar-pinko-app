import '/core/app_export.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_screen/models/gameplay_model.dart';

class GameplayController extends GetxController {
  Rx<GameplayModel> gameplayModelObj = GameplayModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
