import 'bloc/profile_profile_info_tab_container_bloc.dart';
import 'models/profile_profile_info_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';
import 'package:sadid_s_application2/presentation/profile_address_details_page/profile_address_details_page.dart';
import 'package:sadid_s_application2/presentation/profile_my_orders_page/profile_my_orders_page.dart';
import 'package:sadid_s_application2/presentation/profile_profile_info_page/profile_profile_info_page.dart';
import 'package:sadid_s_application2/presentation/profile_security_page/profile_security_page.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:sadid_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:sadid_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:sadid_s_application2/widgets/custom_icon_button.dart';

class ProfileProfileInfoTabContainerScreen extends StatefulWidget {
  const ProfileProfileInfoTabContainerScreen({Key? key}) : super(key: key);

  @override
  ProfileProfileInfoTabContainerScreenState createState() =>
      ProfileProfileInfoTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileProfileInfoTabContainerBloc>(
        create: (context) => ProfileProfileInfoTabContainerBloc(
            ProfileProfileInfoTabContainerState(
                profileProfileInfoTabContainerModelObj:
                    ProfileProfileInfoTabContainerModel()))
          ..add(ProfileProfileInfoTabContainerInitialEvent()),
        child: ProfileProfileInfoTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class ProfileProfileInfoTabContainerScreenState
    extends State<ProfileProfileInfoTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<ProfileProfileInfoTabContainerBloc,
        ProfileProfileInfoTabContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(64),
                  leadingWidth: getHorizontalSize(40),
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleftGray900,
                      margin: getMargin(left: 16, top: 20, bottom: 20),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_shopsie".tr),
                  styleType: Style.bgFill),
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: getPadding(
                                left: 104, top: 32, right: 104, bottom: 32),
                            decoration: AppDecoration.fillGray50,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: getVerticalSize(116),
                                      width: getHorizontalSize(100),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgProfileimage,
                                                height: getSize(100),
                                                width: getSize(100),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(50)),
                                                alignment: Alignment.topCenter),
                                            CustomIconButton(
                                                height: getSize(32),
                                                width: getSize(32),
                                                margin: getMargin(left: 31),
                                                padding: getPadding(all: 5),
                                                alignment: Alignment.bottomLeft,
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgEdit2))
                                          ])),
                                  Padding(
                                      padding: getPadding(top: 10),
                                      child: Text(
                                          "lbl_archie_copeland"
                                              .tr
                                              .toUpperCase(),
                                          style: theme.textTheme.bodyLarge)),
                                  Padding(
                                      padding: getPadding(top: 13),
                                      child: Text("msg_allentown_new_mexico".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray6000114))
                                ])),
                        Container(
                            height: getVerticalSize(30),
                            width: double.maxFinite,
                            margin: getMargin(top: 18),
                            child: TabBar(
                                controller: tabviewController,
                                isScrollable: true,
                                labelColor: theme.colorScheme.primary,
                                labelStyle: TextStyle(
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400),
                                unselectedLabelColor: appTheme.gray60001,
                                unselectedLabelStyle: TextStyle(
                                    fontSize: getFontSize(14),
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400),
                                indicatorColor: theme.colorScheme.primary,
                                tabs: [
                                  Tab(child: Text("lbl_profile_info".tr)),
                                  Tab(child: Text("lbl_my_orders".tr)),
                                  Tab(child: Text("lbl_security".tr)),
                                  Tab(child: Text("lbl_address_details".tr)),
                                  Tab(child: Text("lbl_log_out".tr))
                                ])),
                        SizedBox(
                            height: getVerticalSize(443),
                            child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  ProfileProfileInfoPage.builder(context),
                                  ProfileMyOrdersPage.builder(context),
                                  ProfileSecurityPage.builder(context),
                                  ProfileAddressDetailsPage.builder(context),
                                  ProfileAddressDetailsPage.builder(context)
                                ]))
                      ]))));
    });
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
