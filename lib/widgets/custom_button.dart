import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      default:
        return getPadding(
          all: 25,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillIndigo500:
        return ColorConstant.indigo500;
      case ButtonVariant.OutlineGray501:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineGray600:
        return null;
      default:
        return ColorConstant.blue600;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray600:
        return Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineGray501:
        return Border.all(
          color: ColorConstant.gray501,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBlue600:
      case ButtonVariant.FillIndigo500:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.JosefinSansRomanSemiBold16Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.JosefinSansRomanSemiBold16Bluegray901:
        return TextStyle(
          color: ColorConstant.bluegray901,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w600,
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll25,
  PaddingAll18,
}

enum ButtonVariant {
  FillBlue600,
  FillIndigo500,
  OutlineGray600,
  OutlineGray501,
}

enum ButtonFontStyle {
  JosefinSansRomanSemiBold16,
  JosefinSansRomanSemiBold16Gray600,
  JosefinSansRomanSemiBold16Bluegray901,
}
