import '../controller/result_controller.dart';
import '../models/gameplay_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';

// ignore: must_be_immutable
class GameplayTwoItemWidget extends StatelessWidget {
  GameplayTwoItemWidget(this.gameplayTwoItemModelObj);

  GameplayTwoItemModel gameplayTwoItemModelObj;

  var controller = Get.find<ResultController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: getPadding(
          left: 9,
          top: 3.5,
          right: 1,
          bottom: 3.5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
                top: 15,
                bottom: 15,
              ),
              child: Text(
                "lbl_1".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtJosefinSansRomanRegular44,
              ),
            ),
            Container(
              margin: getMargin(
                left: 30,
              ),
              decoration: AppDecoration.fillBlue800,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 28,
                      top: 10,
                      right: 28,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse31,
                        height: getSize(
                          32.00,
                        ),
                        width: getSize(
                          32.00,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 28,
                      top: 9,
                      right: 28,
                      bottom: 10,
                    ),
                    child: Text(
                      "lbl_argentina".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanMedium14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
