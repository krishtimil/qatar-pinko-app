import 'package:qatar_pinko_cup/data/models/country_model/country_model.dart';

import '../controller/team_choosing_one_controller.dart';
import '../models/gridellipsethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:qatar_pinko_cup/core/app_export.dart';

// ignore: must_be_immutable
class GridellipsethreeItemWidget extends StatelessWidget {
  GridellipsethreeItemWidget(this.gridellipsethreeItemModelObj, this.countryModel);

  CountryModel countryModel;

  GridellipsethreeItemModel gridellipsethreeItemModelObj;

  var controller = Get.find<TeamChoosingOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  30.00,
                ),
              ),
              child: CommonImageView(
                imagePath: countryModel.logo,
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
              left: 10,
              top: 9,
              right: 10,
            ),
            child: Text(
              countryModel.name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtJosefinSansRomanRegular14,
            ),
          ),
        ],
      ),
    );
  }
}
