import '../models/profile_my_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ProfileMyItemWidget extends StatelessWidget {
  ProfileMyItemWidget(
    this.profileMyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileMyItemModel profileMyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage110x109,
          height: getVerticalSize(110),
          width: getHorizontalSize(109),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                profileMyItemModelObj.priceTxt,
                style: theme.textTheme.bodyLarge,
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  profileMyItemModelObj.shortsinYellowTxt,
                  style: CustomTextStyles.bodyMedium14_1,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 38,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_qty2".tr,
                              style: CustomTextStyles.bodyMediumGray60001,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                        "lbl_1".tr,
                        style: CustomTextStyles.bodyMedium14_1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
