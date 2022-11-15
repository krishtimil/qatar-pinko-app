import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          height: getVerticalSize(
            24.00,
          ),
          width: getHorizontalSize(
            29.00,
          ),
          decoration: AppDecoration.fillTeal300,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 8,
                    top: 6,
                    right: 7,
                    bottom: 6,
                  ),
                  child: InkWell(
                    onTap: () {
                      //onTapImgArrowleft();
                    },
                    child: CommonImageView(
                      svgPath: ImageConstant.imgArrowleft,
                      height: getVerticalSize(
                        11.00,
                      ),
                      width: getHorizontalSize(
                        13.00,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
