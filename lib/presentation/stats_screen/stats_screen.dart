import 'controller/stats_controller.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_stack.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_title.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/custom_app_bar.dart';

class StatsScreen extends GetWidget<StatsController> {
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
                        CustomAppBar(
                          height: getVerticalSize(
                            56.00,
                          ),
                          leadingWidth: 47,
                          leading: AppbarStack(
                            margin: getMargin(
                              left: 18,
                            ),
                          ),
                          centerTitle: true,
                          title: AppbarTitle(
                            text: "lbl_my_stats".tr,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 20,
                            top: 21,
                            right: 20,
                            bottom: 37,
                          ),
                          decoration: AppDecoration.outlineBlue800,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 68,
                                  top: 37,
                                  right: 68,
                                ),
                                child: Text(
                                  "lbl_favorite_team".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtJosefinSansRomanBold16Gray800,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 68,
                                  top: 29,
                                  right: 68,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      30.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgEllipse31,
                                    height: getSize(
                                      60.00,
                                    ),
                                    width: getSize(
                                      60.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 68,
                                  top: 9,
                                  right: 68,
                                ),
                                child: Text(
                                  "lbl_argentina".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanRegular14,
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  183.00,
                                ),
                                margin: getMargin(
                                  left: 68,
                                  top: 57,
                                  right: 68,
                                ),
                                child: Text(
                                  "msg_biggest_winning".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle
                                      .txtJosefinSansRomanBold16Gray800
                                      .copyWith(
                                    height: 1.19,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 68,
                                  top: 17,
                                  right: 68,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "lbl_400".tr,
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
                                        left: 6,
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
                                        decoration: AppDecoration.fillYellow500
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder12,
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
                              Container(
                                width: getHorizontalSize(
                                  183.00,
                                ),
                                margin: getMargin(
                                  left: 68,
                                  top: 47,
                                  right: 68,
                                ),
                                child: Text(
                                  "msg_biggest_winning".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle
                                      .txtJosefinSansRomanBold16Gray800
                                      .copyWith(
                                    height: 1.19,
                                  ),
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
                                  left: 68,
                                  top: 18,
                                  right: 68,
                                  bottom: 73,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgFolder,
                                        height: getVerticalSize(
                                          53.00,
                                        ),
                                        width: getHorizontalSize(
                                          72.00,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          left: 27,
                                          top: 16,
                                          right: 27,
                                          bottom: 16,
                                        ),
                                        child: Text(
                                          "lbl_8_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
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
