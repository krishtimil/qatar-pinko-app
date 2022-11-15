import '/core/app_export.dart';
import 'package:qatar_pinko_cup/presentation/main_menu_screen/models/main_menu_model.dart';

class MainMenuController extends GetxController {
  Rx<MainMenuModel> mainMenuModelObj = MainMenuModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
// TODO: implement Actions
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
