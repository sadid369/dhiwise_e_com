import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage3,
          height: getVerticalSize(236),
          width: getHorizontalSize(171),
          radius: BorderRadius.circular(
            getHorizontalSize(8),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
          ),
          child: Text(
            listItemModelObj.pullbearexclusiTxt,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.50,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 10,
          ),
          child: Text(
            listItemModelObj.priceTxt,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
