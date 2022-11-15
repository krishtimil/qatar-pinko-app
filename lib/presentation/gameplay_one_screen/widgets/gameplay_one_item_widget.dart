import '../controller/gameplay_one_controller.dart';
import '../models/gameplay_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';

// ignore: must_be_immutable
class GameplayOneItemWidget extends StatelessWidget {
  GameplayOneItemWidget(this.gameplayOneItemModelObj);

  GameplayOneItemModel gameplayOneItemModelObj;

  var controller = Get.find<GameplayOneController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 33,
        top: 6.5,
        right: 33,
        bottom: 6.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CommonImageView(
            svgPath: ImageConstant.imgFire,
            height: getVerticalSize(
              32.00,
            ),
            width: getHorizontalSize(
              42.00,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 25,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgFire,
              height: getVerticalSize(
                32.00,
              ),
              width: getHorizontalSize(
                42.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgFire,
              height: getVerticalSize(
                32.00,
              ),
              width: getHorizontalSize(
                42.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 25,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgFire,
              height: getVerticalSize(
                32.00,
              ),
              width: getHorizontalSize(
                42.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
