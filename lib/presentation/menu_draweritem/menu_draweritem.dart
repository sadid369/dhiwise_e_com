import 'bloc/menu_bloc.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

class MenuDraweritem extends StatelessWidget {
  const MenuDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: getHorizontalSize(310),
            padding: getPadding(left: 67, top: 34, right: 67, bottom: 34),
            decoration: AppDecoration.fillWhiteA,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 58, top: 36),
                      child: Text("lbl_cart".tr.toUpperCase(),
                          style: theme.textTheme.bodyLarge)),
                  Padding(
                      padding: getPadding(left: 44, top: 29),
                      child: Text("lbl_profile".tr.toUpperCase(),
                          style: theme.textTheme.bodyLarge)),
                  Padding(
                      padding: getPadding(left: 33, top: 29),
                      child: Text("lbl_clothing".tr.toUpperCase(),
                          style: theme.textTheme.bodyLarge)),
                  Padding(
                      padding: getPadding(left: 51, top: 29),
                      child: Text("lbl_shoes".tr.toUpperCase(),
                          style: theme.textTheme.bodyLarge)),
                  Spacer(),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Expanded(
                        child: CustomImageView(
                            svgPath: ImageConstant.img5279112camera,
                            height: getSize(26),
                            width: getSize(26),
                            margin: getMargin(right: 12))),
                    Expanded(
                        child: CustomImageView(
                            svgPath: ImageConstant.img5279111networkfbsocial,
                            height: getSize(26),
                            width: getSize(26),
                            margin: getMargin(left: 12, right: 12),
                            onTap: () {
                              onTapImgnetworkf(context);
                            })),
                    Expanded(
                        child: CustomImageView(
                            svgPath: ImageConstant.img5305160inspira,
                            height: getSize(26),
                            width: getSize(26),
                            margin: getMargin(left: 12, right: 12))),
                    Expanded(
                        child: CustomImageView(
                            svgPath:
                                ImageConstant.img5279123tweettwittertwitter,
                            height: getSize(26),
                            width: getSize(26),
                            margin: getMargin(left: 12)))
                  ])
                ])));
  }

  /// Opens a URL in the device's default web browser.
  ///
  /// The [context] parameter is the `BuildContext` of the widget that invoked the function.
  ///
  /// Throws an exception if the URL could not be launched.
  onTapImgnetworkf(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
