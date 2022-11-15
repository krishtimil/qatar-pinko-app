import '../gameplay_two_screen/widgets/gameplay_two_item_widget.dart';
import 'controller/gameplay_two_controller.dart';
import 'models/gameplay_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/custom_button.dart';

class GameplayTwoScreen extends GetWidget<GameplayTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgBg,
                      height: getVerticalSize(
                        640.00,
                      ),
                      width: getHorizontalSize(
                        360.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 28,
                            top: 40,
                            right: 28,
                          ),
                          child: Text(
                            "lbl_result".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJosefinSansRomanBold32,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 28,
                            top: 9,
                            right: 28,
                          ),
                          decoration: AppDecoration.outlineBlue800,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 37,
                                    top: 25,
                                    right: 37,
                                  ),
                                  child: Obx(
                                    () => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.gameplayTwoModelObj
                                          .value.gameplayTwoItemList.length,
                                      itemBuilder: (context, index) {
                                        GameplayTwoItemModel model = controller
                                            .gameplayTwoModelObj
                                            .value
                                            .gameplayTwoItemList[index];
                                        return GameplayTwoItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    2.00,
                                  ),
                                  width: getHorizontalSize(
                                    274.00,
                                  ),
                                  margin: getMargin(
                                    left: 15,
                                    top: 13,
                                    right: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.bluegray100,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 15,
                                    top: 22,
                                    right: 15,
                                    bottom: 29,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                          bottom: 3,
                                        ),
                                        child: Text(
                                          "lbl_total_win_400".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtJosefinSansRomanSemiBold21,
                                        ),
                                      ),
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(
                                          left: 5,
                                        ),
                                        color: ColorConstant.yellow500,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder12,
                                        ),
                                        child: Container(
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          decoration: AppDecoration
                                              .fillYellow500
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder12,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgEllipse2Stroke,
                                                  height: getSize(
                                                    24.00,
                                                  ),
                                                  width: getSize(
                                                    24.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          width: 277,
                          text: "lbl_to_main_menu".tr,
                          margin: getMargin(
                            left: 28,
                            top: 23,
                            right: 28,
                            bottom: 31,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
