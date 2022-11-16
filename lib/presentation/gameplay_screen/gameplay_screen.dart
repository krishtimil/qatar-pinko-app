import '../gameplay_screen/widgets/gameplay_one_item_widget.dart';
import 'controller/gameplay_controller.dart';
import 'models/gameplay_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_circleimage.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/custom_app_bar.dart';

class GameplayScreen extends GetWidget<GameplayController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
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
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: SingleChildScrollView(
                          padding: getPadding(
                            left: 0,
                            top: 10,
                          ),
                          child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      all: 24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Obx(
                                          () => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .gameplayModelObj
                                                .value
                                                .gameplayOneItemList
                                                .length,
                                            itemBuilder: (context, index) {
                                              GameplayOneItemModel model =
                                                  controller
                                                          .gameplayModelObj
                                                          .value
                                                          .gameplayOneItemList[
                                                      index];
                                              return GameplayOneItemWidget(
                                                model,
                                              );
                                            },
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 1,
                                              top: 35,
                                              right: 9,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  height: getVerticalSize(
                                                    53.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    72.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 1,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height:
                                                              getVerticalSize(
                                                            53.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            72.00,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            left: 25,
                                                            top: 16,
                                                            right: 25,
                                                            bottom: 16,
                                                          ),
                                                          child: Text(
                                                            "lbl_2_5".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtJosefinSansRomanSemiBold16WhiteA700,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(
                                                    53.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    72.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 1,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height:
                                                              getVerticalSize(
                                                            53.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            72.00,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            left: 26,
                                                            top: 16,
                                                            right: 26,
                                                            bottom: 16,
                                                          ),
                                                          child: Text(
                                                            "lbl_1_2".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtJosefinSansRomanSemiBold16WhiteA700,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(
                                                    53.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    72.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 1,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height:
                                                              getVerticalSize(
                                                            53.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            72.00,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            left: 25,
                                                            top: 16,
                                                            right: 25,
                                                            bottom: 16,
                                                          ),
                                                          child: Text(
                                                            "lbl_3_6".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtJosefinSansRomanSemiBold16WhiteA700,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(
                                                    53.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    72.00,
                                                  ),
                                                  margin: getMargin(
                                                    top: 1,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height:
                                                              getVerticalSize(
                                                            53.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            72.00,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        child: Padding(
                                                          padding: getPadding(
                                                            left: 27,
                                                            top: 16,
                                                            right: 27,
                                                            bottom: 16,
                                                          ),
                                                          child: Text(
                                                            "lbl_8_1".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtJosefinSansRomanSemiBold16WhiteA700,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
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
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CommonImageView(
                                        imagePath: ImageConstant.imgVector,
                                        height: getVerticalSize(
                                          679.00,
                                        ),
                                        width: getHorizontalSize(
                                          22.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 334,
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgVectorIndigo500,
                                          height: getVerticalSize(
                                            679.00,
                                          ),
                                          width: getHorizontalSize(
                                            22.00,
                                          ),
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
                    CustomAppBar(
                      height: getVerticalSize(
                        56.00,
                      ),
                      centerTitle: true,
                      title: Row(
                        children: [
                          AppbarCircleimage(
                            imagePath: ImageConstant.imgEllipse31,
                          ),
                          AppbarCircleimage(
                            imagePath: ImageConstant.imgEllipse34,
                            margin: getMargin(
                              left: 21,
                            ),
                          ),
                          AppbarCircleimage(
                            imagePath: ImageConstant.imgEllipse33,
                            margin: getMargin(
                              left: 74,
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        AppbarCircleimage(
                          imagePath: ImageConstant.imgEllipse3,
                          margin: getMargin(
                            left: 137,
                            right: 137,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
