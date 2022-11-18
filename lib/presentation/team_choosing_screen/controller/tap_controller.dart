import 'package:qatar_pinko_cup/core/app_export.dart';

class TapController extends GetxController {
  int _selIndex = -1;

  int get selIndex => _selIndex;

  set selIndex(int value) {
    _selIndex = value;
    update();
    refresh();
  }
}
