import 'package:get/get.dart';
import 'gameplay_one_item_model.dart';

class GameplayModel {
  RxList<GameplayOneItemModel> gameplayOneItemList =
      RxList.filled(10, GameplayOneItemModel());
}
