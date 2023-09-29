import '../main_landing_screen/widgets/main_landing_item_widget.dart';
import 'bloc/main_landing_bloc.dart';
import 'models/main_landing_item_model.dart';
import 'models/main_landing_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/core/utils/validation_functions.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sadid_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sadid_s_application2/widgets/custom_drop_down.dart';
import 'package:sadid_s_application2/widgets/custom_elevated_button.dart';
import 'package:sadid_s_application2/widgets/custom_outlined_button.dart';
import 'package:sadid_s_application2/widgets/custom_text_form_field.dart';

class MainLandingScreen extends StatelessWidget {
  MainLandingScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<MainLandingBloc>(
      create: (context) => MainLandingBloc(MainLandingState(
        mainLandingModelObj: MainLandingModel(),
      ))
        ..add(MainLandingInitialEvent()),
      child: MainLandingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: getHorizontalSize(32),
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 12,
              top: 17,
              bottom: 22,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_shopsie".tr,
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 16,
                top: 17,
                right: 22,
                bottom: 1,
              ),
            ),
            AppbarImage1(
              svgPath: ImageConstant.imgCart,
              margin: getMargin(
                left: 10,
                top: 16,
                right: 22,
              ),
            ),
            AppbarImage1(
              svgPath: ImageConstant.imgUser,
              margin: getMargin(
                left: 10,
                top: 17,
                right: 38,
                bottom: 1,
              ),
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: getPadding(
              top: 3,
            ),
            child: Padding(
              padding: getPadding(
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: AppDecoration.fillGray,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getVerticalSize(362),
                          width: getHorizontalSize(360),
                          margin: getMargin(
                            top: 24,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage61,
                                height: getVerticalSize(362),
                                width: getHorizontalSize(360),
                                radius: BorderRadius.vertical(
                                  top: Radius.circular(getHorizontalSize(200)),
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: getPadding(
                                    left: 59,
                                    right: 59,
                                    bottom: 14,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_season_sale".tr.toUpperCase(),
                                        style: theme.textTheme.displaySmall,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 3,
                                        ),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_up_to"
                                                    .tr
                                                    .toUpperCase(),
                                                style: CustomTextStyles
                                                    .titleMediumLatoWhiteA700,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                              TextSpan(
                                                text: "lbl_60_off"
                                                    .tr
                                                    .toUpperCase(),
                                                style: CustomTextStyles
                                                    .displaySmallLatoGray200,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUnion,
                          height: getVerticalSize(48),
                          width: getHorizontalSize(134),
                          margin: getMargin(
                            top: 32,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage60,
                          height: getVerticalSize(123),
                          width: getHorizontalSize(390),
                          margin: getMargin(
                            top: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 66,
                    ),
                    child: Text(
                      "lbl_trending_now".tr.toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 34,
                        right: 53,
                      ),
                      child: Row(
                        children: [
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(48),
                            text: "lbl_all".tr,
                            buttonTextStyle:
                                CustomTextStyles.bodyMediumWhiteA700,
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(80),
                            text: "lbl_dresses".tr,
                            margin: getMargin(
                              left: 8,
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.bodyMedium!,
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(103),
                            text: "lbl_accessories".tr,
                            margin: getMargin(
                              left: 8,
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.bodyMedium!,
                          ),
                          CustomElevatedButton(
                            height: getVerticalSize(32),
                            width: getHorizontalSize(66),
                            text: "lbl_dresses".tr,
                            margin: getMargin(
                              left: 8,
                            ),
                            buttonStyle: CustomButtonStyles.fillGray,
                            buttonTextStyle: theme.textTheme.bodyMedium!,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: getPadding(
                      left: 16,
                      top: 32,
                    ),
                    child: IntrinsicWidth(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage,
                                      height: getVerticalSize(236),
                                      width: getHorizontalSize(171),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(8),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 11,
                                      ),
                                      child: Text(
                                        "msg_olive_plain_dress".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_20_99".tr.toUpperCase(),
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgImage236x171,
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
                                          "lbl_shoes_on_heels".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 9,
                                        ),
                                        child: Text(
                                          "lbl_28_99".tr.toUpperCase(),
                                          style: theme.textTheme.labelLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 10,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage,
                                  height: getVerticalSize(236),
                                  width: getHorizontalSize(171),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(8),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 11,
                                  ),
                                  child: Text(
                                    "msg_olive_plain_dress".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 9,
                                  ),
                                  child: Text(
                                    "lbl_20_99".tr.toUpperCase(),
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 62,
                    ),
                    child: Text(
                      "msg_actual_categories".tr.toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7,
                    height: getVerticalSize(386),
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      top: 34,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_outerwear".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "msg_raincoats_sweaters".tr,
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle7386x358,
                    height: getVerticalSize(386),
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Text(
                      "lbl_leather_shoes".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 10,
                    ),
                    child: Text(
                      "msg_shoes_sandals".tr,
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle8,
                    height: getVerticalSize(386),
                    width: getHorizontalSize(358),
                    margin: getMargin(
                      top: 24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "lbl_light_dresses".tr,
                      style: CustomTextStyles.titleSmallBold,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Text(
                      "msg_evening_casual".tr,
                      style: CustomTextStyles.bodySmallOnError,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 48,
                    ),
                    child: Text(
                      "msg_only_trusted_brands".tr.toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 63,
                      top: 37,
                      right: 63,
                    ),
                    child: BlocSelector<MainLandingBloc, MainLandingState,
                        MainLandingModel?>(
                      selector: (state) => state.mainLandingModelObj,
                      builder: (context, mainLandingModelObj) {
                        return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisExtent: getVerticalSize(59),
                            crossAxisCount: 3,
                            mainAxisSpacing: getHorizontalSize(12),
                            crossAxisSpacing: getHorizontalSize(12),
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount:
                              mainLandingModelObj?.mainLandingItemList.length ??
                                  0,
                          itemBuilder: (context, index) {
                            MainLandingItemModel model = mainLandingModelObj
                                    ?.mainLandingItemList[index] ??
                                MainLandingItemModel();
                            return MainLandingItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 45,
                    ),
                    padding: getPadding(
                      left: 19,
                      top: 40,
                      right: 19,
                      bottom: 40,
                    ),
                    decoration: AppDecoration.fillBlack,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 49,
                          ),
                          child: Text(
                            "lbl_new_arrival".tr.toUpperCase(),
                            style: CustomTextStyles.displaySmallGray400,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              top: 6,
                            ),
                            child: Text(
                              "lbl_fall_2021".tr.toUpperCase(),
                              style: CustomTextStyles.titleSmallBluegray10002,
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            top: 69,
                          ),
                          padding: getPadding(
                            left: 18,
                            right: 18,
                          ),
                          decoration: AppDecoration.outlineBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL279,
                          ),
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              left: 10,
                              right: 10,
                            ),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL279,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle1381,
                              height: getVerticalSize(354),
                              width: getHorizontalSize(292),
                              radius: BorderRadius.vertical(
                                top: Radius.circular(getHorizontalSize(279)),
                              ),
                              margin: getMargin(
                                top: 8,
                              ),
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          width: getHorizontalSize(174),
                          text: "lbl_explore".tr.toUpperCase(),
                          margin: getMargin(
                            top: 40,
                          ),
                          buttonStyle: CustomButtonStyles.fillWhiteA,
                          buttonTextStyle: theme.textTheme.labelLarge!,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 43,
                    ),
                    child: Text(
                      "msg_recomended_looks".tr.toUpperCase(),
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 44,
                        right: 95,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_gender2".tr,
                                    style: CustomTextStyles.titleSmallGray60001,
                                  ),
                                  TextSpan(
                                    text: "lbl".tr,
                                    style: CustomTextStyles.titleSmallGray60002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          BlocSelector<MainLandingBloc, MainLandingState,
                              MainLandingModel?>(
                            selector: (state) => state.mainLandingModelObj,
                            builder: (context, mainLandingModelObj) {
                              return CustomDropDown(
                                width: getHorizontalSize(67),
                                icon: Container(
                                  margin: getMargin(
                                    left: 2,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgChevronright2,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 10,
                                  bottom: 1,
                                ),
                                hintText: "lbl_female".tr,
                                hintStyle: CustomTextStyles.bodyMediumGray60002,
                                items:
                                    mainLandingModelObj?.dropdownItemList ?? [],
                                onChanged: (value) {
                                  context
                                      .read<MainLandingBloc>()
                                      .add(ChangeDropDownEvent(value: value));
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_style2".tr,
                                    style: CustomTextStyles.titleSmallGray60001,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: CustomTextStyles.titleSmallGray60002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          BlocSelector<MainLandingBloc, MainLandingState,
                              MainLandingModel?>(
                            selector: (state) => state.mainLandingModelObj,
                            builder: (context, mainLandingModelObj) {
                              return CustomDropDown(
                                width: getHorizontalSize(87),
                                icon: Container(
                                  margin: getMargin(
                                    left: 2,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgChevronright2,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 10,
                                ),
                                hintText: "lbl_partywear".tr,
                                hintStyle: CustomTextStyles.bodyMediumGray60002,
                                items: mainLandingModelObj?.dropdownItemList1 ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<MainLandingBloc>()
                                      .add(ChangeDropDown1Event(value: value));
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 16,
                        top: 7,
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
                                    text: "lbl_price_range2".tr,
                                    style: CustomTextStyles.titleSmallGray60001,
                                  ),
                                  TextSpan(
                                    text: "lbl2".tr,
                                    style: CustomTextStyles.titleSmallGray60002,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          BlocSelector<MainLandingBloc, MainLandingState,
                              MainLandingModel?>(
                            selector: (state) => state.mainLandingModelObj,
                            builder: (context, mainLandingModelObj) {
                              return CustomDropDown(
                                width: getHorizontalSize(31),
                                icon: Container(
                                  margin: getMargin(
                                    left: 2,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant.imgChevronright2,
                                  ),
                                ),
                                margin: getMargin(
                                  left: 10,
                                ),
                                hintText: "lbl_all".tr,
                                hintStyle: CustomTextStyles.bodyMediumGray60002,
                                items: mainLandingModelObj?.dropdownItemList2 ??
                                    [],
                                onChanged: (value) {
                                  context
                                      .read<MainLandingBloc>()
                                      .add(ChangeDropDown2Event(value: value));
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 16,
                      top: 21,
                      right: 16,
                    ),
                    padding: getPadding(
                      all: 6,
                    ),
                    decoration: AppDecoration.outlineGray,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle1385,
                          height: getVerticalSize(407),
                          width: getHorizontalSize(346),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 31,
                          ),
                          child: Text(
                            "lbl_in_this_look".tr.toUpperCase(),
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 35,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage56x56,
                                height: getSize(56),
                                width: getSize(56),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(28),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 7,
                                  bottom: 7,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_43_90".tr,
                                      style: CustomTextStyles
                                          .labelLargeGray900Medium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "msg_cotton_black_dress".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              indent: getHorizontalSize(82),
                              endIndent: getHorizontalSize(21),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 11,
                            right: 80,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage1,
                                height: getSize(56),
                                width: getSize(56),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(28),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: getPadding(
                                    left: 16,
                                    top: 7,
                                    bottom: 7,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_12_50".tr,
                                        style: CustomTextStyles
                                            .labelLargeGray900Medium,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 10,
                                        ),
                                        child: Text(
                                          "msg_saddle_shoulder".tr,
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              indent: getHorizontalSize(82),
                              endIndent: getHorizontalSize(21),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 10,
                            top: 11,
                          ),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2,
                                height: getSize(56),
                                width: getSize(56),
                                radius: BorderRadius.circular(
                                  getHorizontalSize(28),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 7,
                                  bottom: 7,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_99_30".tr,
                                      style: CustomTextStyles
                                          .labelLargeGray900Medium,
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 9,
                                      ),
                                      child: Text(
                                        "lbl_leather_shoes".tr,
                                        style: theme.textTheme.bodySmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Divider(
                              indent: getHorizontalSize(82),
                              endIndent: getHorizontalSize(21),
                            ),
                          ),
                        ),
                        CustomOutlinedButton(
                          text: "lbl_buy_it_now".tr.toUpperCase(),
                          margin: getMargin(
                            left: 10,
                            top: 19,
                            right: 10,
                            bottom: 18,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 49,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(20),
                          width: getSize(20),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(20),
                          width: getSize(20),
                          margin: getMargin(
                            left: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 64,
                    ),
                    padding: getPadding(
                      left: 16,
                      top: 32,
                      right: 16,
                      bottom: 32,
                    ),
                    decoration: AppDecoration.fillBlue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage14,
                          height: getVerticalSize(204),
                          width: getHorizontalSize(231),
                          radius: BorderRadius.circular(
                            getHorizontalSize(12),
                          ),
                          margin: getMargin(
                            top: 8,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 42,
                          ),
                          child: Text(
                            "lbl_get_20_off".tr.toUpperCase(),
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 15,
                          ),
                          child: Text(
                            "msg_leave_your_email".tr,
                            style:
                                CustomTextStyles.bodyMediumSecondaryContainer,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 28,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BlocSelector<MainLandingBloc, MainLandingState,
                                  TextEditingController?>(
                                selector: (state) => state.emailController,
                                builder: (context, emailController) {
                                  return CustomTextFormField(
                                    width: getHorizontalSize(234),
                                    controller: emailController,
                                    hintText: "lbl_email".tr,
                                    hintStyle:
                                        CustomTextStyles.labelLargeBluegray400,
                                    textInputAction: TextInputAction.done,
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    },
                                    contentPadding: getPadding(
                                      left: 16,
                                      top: 12,
                                      right: 16,
                                      bottom: 12,
                                    ),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillWhiteA,
                                    fillColor: appTheme.whiteA700,
                                  );
                                },
                              ),
                              CustomElevatedButton(
                                height: getVerticalSize(40),
                                width: getHorizontalSize(114),
                                text: "lbl_subscribe".tr,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeWhiteA700,
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
        bottomNavigationBar: Container(
          margin: getMargin(
            left: 16,
            right: 22,
            bottom: 46,
          ),
          decoration: AppDecoration.primary,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "lbl_2021_shopsie".tr,
                style: theme.textTheme.bodySmall,
              ),
              Spacer(),
              Text(
                "msg_privacy_cookies".tr,
                style: CustomTextStyles.bodySmallGray200,
              ),
              Padding(
                padding: getPadding(
                  left: 32,
                ),
                child: Text(
                  "lbl_ts_cs".tr,
                  style: CustomTextStyles.bodySmallGray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
