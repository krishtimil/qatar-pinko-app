import 'controller/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/custom_button.dart';
import 'package:qatar_pinko_cup/routes/app_routes.dart';

class MainMenuScreen extends GetWidget<MainMenuController> {
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
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgBg,
                                  height: getVerticalSize(640.00),
                                  width: getHorizontalSize(360.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 17, top: 24, right: 17),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 19, bottom: 18),
                                                      child: Text(
                                                          "lbl_02_59_59".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtJosefinSansRomanSemiBold16)),
                                                  CustomButton(
                                                      onTap: () {},
                                                      width: 119,
                                                      text: "lbl_1_000".tr,
                                                      margin:
                                                          getMargin(left: 14),
                                                      variant: ButtonVariant
                                                          .FillIndigo500,
                                                      padding: ButtonPadding
                                                          .PaddingAll18,
                                                      prefixWidget: Container(
                                                          margin: getMargin(
                                                              right: 6),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .yellow500,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          9.50))),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgEllipse2Stroke)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 17, top: 58, right: 17),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgQatarplinkocu,
                                                height: getVerticalSize(175.00),
                                                width: getHorizontalSize(
                                                    242.00)))),
                                    CustomButton(
                                        onTap: () => Navigator.pushNamed(
                                            context,
                                            AppRoutes.teamChoosingOneScreen),
                                        width: 277,
                                        text: "lbl_start_game".tr,
                                        margin: getMargin(
                                            left: 17, top: 52, right: 17),
                                        alignment: Alignment.center),
                                    CustomButton(
                                        onTap: () => Navigator.pushNamed(
                                            context, AppRoutes.gameplayScreen),
                                        width: 277,
                                        text: "lbl_my_stats".tr,
                                        margin: getMargin(
                                            left: 17,
                                            top: 29,
                                            right: 17,
                                            bottom: 111),
                                        variant: ButtonVariant.OutlineGray600,
                                        fontStyle: ButtonFontStyle
                                            .JosefinSansRomanSemiBold16Gray600,
                                        alignment: Alignment.center)
                                  ]))
                        ]))))));
  }
}
