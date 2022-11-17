import 'package:qatar_pinko_cup/data/models/country_model/country_model.dart';
import 'package:qatar_pinko_cup/data/raw_data/countries_info.dart';
import 'package:qatar_pinko_cup/presentation/main_menu_screen/main_menu_screen.dart';
import 'package:qatar_pinko_cup/presentation/team_choosing_screen/widgets/gridellipsethree_item_widget.dart';

import 'controller/team_choosing_controller.dart';
import 'models/gridellipsethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_stack.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/appbar_title.dart';
import 'package:qatar_pinko_cup/widgets/app_bar/custom_app_bar.dart';

class TeamChoosingScreen extends GetWidget<TeamChoosingController> {
  int? selectedIndex;

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
                            text: "msg_choose_your_cou".tr,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            515.00,
                          ),
                          width: getHorizontalSize(
                            309.00,
                          ),
                          margin: getMargin(
                            left: 26,
                            top: 34,
                            right: 25,
                            bottom: 31,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.pushNamed(
                                    context, AppRoutes.betScreen),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: getMargin(
                                      left: 15,
                                      top: 10,
                                      right: 15,
                                    ),
                                    decoration: AppDecoration.fillBlue600,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            if (selectedIndex == null) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          'Please select at least one team')));
                                            } else {
                                              Navigator.pushNamed(
                                                  context, AppRoutes.betScreen);
                                            }
                                          },
                                          child: Padding(
                                            padding: getPadding(
                                              left: 94,
                                              top: 25,
                                              right: 94,
                                              bottom: 26,
                                            ),
                                            child: Text(
                                              "lbl_next_step".tr,
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
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: getVerticalSize(
                                    432.00,
                                  ),
                                  width: getHorizontalSize(
                                    309.00,
                                  ),
                                  margin: getMargin(
                                    bottom: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    border: Border.all(
                                      color: ColorConstant.blue800,
                                      width: getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 25,
                                    top: 10,
                                    right: 25,
                                    bottom: 90,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Obx(
                                            () => GridView.builder(
                                              shrinkWrap: true,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                mainAxisExtent: getVerticalSize(
                                                  84.00,
                                                ),
                                                crossAxisCount: 2,
                                                mainAxisSpacing:
                                                    getHorizontalSize(
                                                  77.00,
                                                ),
                                                crossAxisSpacing:
                                                    getHorizontalSize(
                                                  77.00,
                                                ),
                                              ),
                                              physics: BouncingScrollPhysics(),
                                              itemCount: controller
                                                  .teamChoosingModelObj
                                                  .value
                                                  .teamChoosingItemList
                                                  .length,
                                              itemBuilder: (context, index) {
                                                GridellipsethreeItemModel
                                                    model = controller
                                                            .teamChoosingModelObj
                                                            .value
                                                            .teamChoosingItemList[
                                                        index];

                                                var model1 =
                                                    controller.selIndex;

                                                return Container(
                                                  decoration:
                                                      model1 ==
                                                              index
                                                          ? AppDecoration
                                                              .fillBlue800
                                                          : null,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          selectedIndex = index;
                                                          controller.selIndex =
                                                              index;
                                                        },
                                                        child: GridellipsethreeItemWidget(CountryModel(
                                                            logo: CountriesInfo
                                                                .countriesInfo[
                                                                    '${index.toString()}']!
                                                                .logo,
                                                            name: CountriesInfo
                                                                .countriesInfo[
                                                                    '${index.toString()}']!
                                                                .name)),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
          ),
        ),
      ),
    );
  }
}
