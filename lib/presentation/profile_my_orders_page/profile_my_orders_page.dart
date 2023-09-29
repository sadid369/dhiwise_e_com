import '../profile_my_orders_page/widgets/profile_my_item_widget.dart';
import 'bloc/profile_my_orders_bloc.dart';
import 'models/profile_my_item_model.dart';
import 'models/profile_my_orders_model.dart';
import 'package:flutter/material.dart';
import 'package:sadid_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileMyOrdersPage extends StatefulWidget {
  const ProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileMyOrdersPageState createState() => ProfileMyOrdersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileMyOrdersBloc>(
      create: (context) => ProfileMyOrdersBloc(ProfileMyOrdersState(
        profileMyOrdersModelObj: ProfileMyOrdersModel(),
      ))
        ..add(ProfileMyOrdersInitialEvent()),
      child: ProfileMyOrdersPage(),
    );
  }
}

class ProfileMyOrdersPageState extends State<ProfileMyOrdersPage>
    with AutomaticKeepAliveClientMixin<ProfileMyOrdersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Padding(
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
                            "lbl_orders".tr.toUpperCase(),
                            style: CustomTextStyles.labelLargeGray900_2,
                          ),
                          Expanded(
                            child: Padding(
                              padding: getPadding(
                                top: 23,
                              ),
                              child: BlocSelector<ProfileMyOrdersBloc,
                                  ProfileMyOrdersState, ProfileMyOrdersModel?>(
                                selector: (state) =>
                                    state.profileMyOrdersModelObj,
                                builder: (context, profileMyOrdersModelObj) {
                                  return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (
                                      context,
                                      index,
                                    ) {
                                      return Padding(
                                        padding: getPadding(
                                          top: 7.5,
                                          bottom: 7.5,
                                        ),
                                        child: SizedBox(
                                          width: getHorizontalSize(358),
                                          child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: appTheme.gray200,
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: profileMyOrdersModelObj
                                            ?.profileMyItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ProfileMyItemModel model =
                                          profileMyOrdersModelObj
                                                  ?.profileMyItemList[index] ??
                                              ProfileMyItemModel();
                                      return ProfileMyItemWidget(
                                        model,
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
