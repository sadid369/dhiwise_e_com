import '../models/main_landing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class MainLandingItemWidget extends StatelessWidget {
  MainLandingItemWidget(
    this.mainLandingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainLandingItemModel mainLandingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage15,
      height: getVerticalSize(58),
      width: getHorizontalSize(80),
    );
  }
}
