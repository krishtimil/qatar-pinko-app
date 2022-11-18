import 'package:qatar_pinko_cup/data/models/args_model/args_model.dart';
import 'package:qatar_pinko_cup/presentation/confirm_screen/confirm_screen.dart';

import 'controller/bet_controller.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_stack.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_title.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/custom_app_bar.dart';
import 'package:qatar_pinko_cup/widgets/custom_button.dart';

class BetScreen extends GetWidget<BetController> {
  TextEditingController _betController = TextEditingController();
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
                            text: "msg_bet_on_your_tea".tr,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 41,
                            top: 55,
                            right: 41,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                  bottom: 11,
                                ),
                                child: Text(
                                  "lbl_balance".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanBold25,
                                ),
                              ),
                              CustomButton(
                                width: 119,
                                text: "lbl_1_000".tr,
                                margin: getMargin(
                                  left: 28,
                                ),
                                variant: ButtonVariant.FillIndigo500,
                                padding: ButtonPadding.PaddingAll18,
                                prefixWidget: Container(
                                  margin: getMargin(
                                    right: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.yellow500,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        9.50,
                                      ),
                                    ),
                                  ),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgEllipse2Stroke,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 41,
                            top: 25,
                            right: 41,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 17,
                                  bottom: 11,
                                ),
                                child: Text(
                                  "lbl_bet".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanBold25,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: getMargin(left: 20),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Place your bet here"),
                                    controller: _betController,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          onTap: () {
                            if (_betController.text.isNotEmpty) {
                              Navigator.pushNamed(
                                context,
                                AppRoutes.confirmScreen,
                                arguments: ArgsModel(
                                  betAmount: _betController.text,
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Please enter your bet amount'),
                                ),
                              );
                            }
                          },
                          width: 277,
                          text: "lbl_next".tr,
                          margin: getMargin(
                            left: 41,
                            top: 294,
                            right: 41,
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
