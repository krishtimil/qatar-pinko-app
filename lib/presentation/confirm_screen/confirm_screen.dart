import 'package:qatar_pinko_cup/data/models/args_model/args_model.dart';
import 'package:qatar_pinko_cup/presentation/gameplay_screen/gameplay_screen.dart';

import 'controller/confirm_controller.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_stack.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_title.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/custom_app_bar.dart';
import 'package:qatar_pinko_cup/widgets/custom_button.dart';

class ConfirmScreen extends GetWidget<ConfirmController> {

  @override
  Widget build(BuildContext context) {
    final betAmount = ModalRoute.of(context)!.settings.arguments as ArgsModel;
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            text: "lbl_let_s_go".tr,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 26,
                            top: 34,
                            right: 25,
                          ),
                          decoration: AppDecoration.outlineBlue800,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 51,
                                  top: 42,
                                  right: 51,
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
                                  left: 51,
                                  top: 9,
                                  right: 51,
                                ),
                                child: Text(
                                  "lbl_argentina".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanRegular14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 51,
                                  top: 51,
                                  right: 51,
                                ),
                                child: Text(
                                  "lbl_bet".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanMedium22,
                                ),
                              ),
                              CustomButton(
                                width: 206,
                                text: betAmount.betAmount,
                                margin: getMargin(
                                  left: 51,
                                  top: 9,
                                  right: 51,
                                  bottom: 52,
                                ),
                                variant: ButtonVariant.OutlineGray501,
                                padding: ButtonPadding.PaddingAll18,
                                fontStyle: ButtonFontStyle
                                    .JosefinSansRomanSemiBold16Bluegray901,
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          onTap: () => Navigator.pushNamed(context, AppRoutes.gameplayScreen),
                          width: 277,
                          text: "msg_confirm_and_sta".tr,
                          margin: getMargin(
                            left: 26,
                            top: 134,
                            right: 26,
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
