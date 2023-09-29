import 'bloc/profile_address_details_bloc.dart';
import 'models/profile_address_details_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/core/utils/validation_functions.dart';
import 'package:sadid_s_application2/widgets/custom_outlined_button.dart';
import 'package:sadid_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfileAddressDetailsPage extends StatefulWidget {
  const ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAddressDetailsPageState createState() =>
      ProfileAddressDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileAddressDetailsBloc>(
      create: (context) => ProfileAddressDetailsBloc(ProfileAddressDetailsState(
        profileAddressDetailsModelObj: ProfileAddressDetailsModel(),
      ))
        ..add(ProfileAddressDetailsInitialEvent()),
      child: ProfileAddressDetailsPage(),
    );
  }
}

class ProfileAddressDetailsPageState extends State<ProfileAddressDetailsPage>
    with AutomaticKeepAliveClientMixin<ProfileAddressDetailsPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 36,
                    right: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address_1".tr,
                        style: CustomTextStyles.labelLargeOnPrimary,
                      ),
                      BlocSelector<ProfileAddressDetailsBloc,
                          ProfileAddressDetailsState, TextEditingController?>(
                        selector: (state) => state.addressController,
                        builder: (context, addressController) {
                          return CustomTextFormField(
                            controller: addressController,
                            margin: getMargin(
                              top: 7,
                            ),
                            hintText: "lbl_enter_address".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            contentPadding: getPadding(
                              left: 12,
                              top: 15,
                              right: 12,
                              bottom: 15,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_address_2".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileAddressDetailsBloc,
                          ProfileAddressDetailsState, TextEditingController?>(
                        selector: (state) => state.addressController1,
                        builder: (context, addressController1) {
                          return CustomTextFormField(
                            controller: addressController1,
                            margin: getMargin(
                              top: 7,
                            ),
                            hintText: "lbl_enter_address".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            contentPadding: getPadding(
                              left: 12,
                              top: 15,
                              right: 12,
                              bottom: 15,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 25,
                        ),
                        child: Text(
                          "lbl_city".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileAddressDetailsBloc,
                          ProfileAddressDetailsState, TextEditingController?>(
                        selector: (state) => state.cityController,
                        builder: (context, cityController) {
                          return CustomTextFormField(
                            controller: cityController,
                            margin: getMargin(
                              top: 6,
                            ),
                            hintText: "lbl_enter_your_city".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            contentPadding: getPadding(
                              left: 12,
                              top: 15,
                              right: 12,
                              bottom: 15,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_postal_code".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileAddressDetailsBloc,
                          ProfileAddressDetailsState, TextEditingController?>(
                        selector: (state) => state.enterpostalController,
                        builder: (context, enterpostalController) {
                          return CustomTextFormField(
                            controller: enterpostalController,
                            margin: getMargin(
                              top: 7,
                            ),
                            hintText: "msg_enter_postal_code".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            contentPadding: getPadding(
                              left: 12,
                              top: 15,
                              right: 12,
                              bottom: 15,
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "lbl_phone_number".tr,
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                      ),
                      BlocSelector<ProfileAddressDetailsBloc,
                          ProfileAddressDetailsState, TextEditingController?>(
                        selector: (state) => state.phoneNumberController,
                        builder: (context, phoneNumberController) {
                          return CustomTextFormField(
                            controller: phoneNumberController,
                            margin: getMargin(
                              top: 7,
                            ),
                            hintText: "msg_enter_phone_number".tr,
                            hintStyle: CustomTextStyles.bodyMediumBluegray40001,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.phone,
                            validator: (value) {
                              if (!isValidPhone(value)) {
                                return "Please enter valid phone number";
                              }
                              return null;
                            },
                            contentPadding: getPadding(
                              left: 12,
                              top: 15,
                              right: 12,
                              bottom: 15,
                            ),
                          );
                        },
                      ),
                      CustomOutlinedButton(
                        text: "msg_add_another_address".tr.toUpperCase(),
                        margin: getMargin(
                          top: 24,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 24,
                        ),
                        child: Text(
                          "msg_current_addresses".tr.toUpperCase(),
                          style: CustomTextStyles.labelLargeGray900_2,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 23,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 25,
                          right: 16,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.fillGray5001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_home_address".tr,
                                    style: CustomTextStyles
                                        .labelLargeGray900Medium,
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(16),
                                    width: getSize(16),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                    ),
                                    child: Text(
                                      "lbl_edit".tr,
                                      style: CustomTextStyles.labelLargeMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 30,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_address_1".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    "lbl_amoy_st_592".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_address_2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    "lbl_amoy_st_592".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_city".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "lbl_los_angeles".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 18,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_postal_code2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "lbl_0000000".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 24,
                        ),
                        padding: getPadding(
                          left: 16,
                          top: 25,
                          right: 16,
                          bottom: 25,
                        ),
                        decoration: AppDecoration.fillGray5001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_home_address".tr,
                                    style: CustomTextStyles
                                        .labelLargeGray900Medium,
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(16),
                                    width: getSize(16),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 12,
                                    ),
                                    child: Text(
                                      "lbl_edit".tr,
                                      style: CustomTextStyles.labelLargeMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 30,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_address_1".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    "lbl_amoy_st_592".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 19,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_address_2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray60001_1,
                                    ),
                                  ),
                                  Text(
                                    "lbl_amoy_st_592".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_city".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "lbl_los_angeles".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 18,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_postal_code2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumGray60001_1,
                                  ),
                                  Text(
                                    "lbl_0000000".tr,
                                    style: theme.textTheme.bodyMedium,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
