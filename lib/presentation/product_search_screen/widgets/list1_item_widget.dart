import '../models/list1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(
    this.list1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  List1ItemModel list1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage171x171,
          height: getSize(171),
          width: getSize(171),
          radius: BorderRadius.circular(
            getHorizontalSize(8),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 11,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_long".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "lbl_sleeve_t_shirt".tr,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
